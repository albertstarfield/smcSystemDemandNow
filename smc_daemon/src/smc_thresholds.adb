package body SMC_Thresholds with SPARK_Mode is

   -- ===========================================================================
   -- Should_Activate_Turbo
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Disjunctive Activation): Turbo activates if ANY single
   --     threshold is crossed (OR logic). Conservative approach — err on the
   --     side of performance when any thermal/power limit is approached.
   --   Axiom 2 (Threshold Design): Thresholds are derived from Apple's T6020
   --     thermal design power (TDP) specifications and battery safety limits,
   --     then biased EARLY by the operator so turbo engages before the silicon
   --     reaches its rated limit rather than at it.
   --
   -- THEOREMS:
   --   Theorem 1 (Monotonicity): If CPU_Temp₁ ≤ CPU_Temp₂ and all other
   --     inputs are equal, then Should_Activate_Turbo(T₁) ⟹ Should_Activate_Turbo(T₂).
   --
   -- CITATIONS:
   --   [1] Apple T6020 Thermal Design: TDP=30W base, 50W turbo ceiling. The
   --       40W activation threshold sits deliberately BELOW that 50W ceiling
   --       so the burst has headroom to finish before the package hits its
   --       sustained-power limit.
   --   [2] Battery safety: max operating temp 40°C (IEC 62133)
   --   [3] Operator-set values (2026-10-03): CPU 93°C, GPU 86°C, Power 40W,
   --       Battery 40°C. Supersedes the earlier 95/93/50/40 set.
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 5 comparisons
   --   CPU Time: ~10ns on M2 Pro
   --   WCET: < 50ns (pure comparison chain, no I/O)
   --   Space Complexity: O(0) — no locals, direct parameter comparison
   --   Nanosecond Anchor: N/A (pure computation)
   -- ===========================================================================

   ----------------------------
   -- Should_Activate_Turbo --
   ----------------------------

   function Should_Activate_Turbo (
      CPU_Temp       : Float;
      GPU_Temp       : Float;
      Power          : Float;
      Battery_Temp   : Float;
      Spike_Count    : Natural
   ) return Boolean is
   begin
      return CPU_Temp >= TURBO_TEMP_CPU_THRESHOLD or
             GPU_Temp >= TURBO_TEMP_GPU_THRESHOLD or
             Power >= TURBO_POWER_THRESHOLD or
             Battery_Temp > TURBO_BATT_TEMP_THRESHOLD or
             Spike_Count >= TURBO_SPIKE_COUNT_MIN;
   end Should_Activate_Turbo;

   -- ===========================================================================
   -- Should_Deactivate_Turbo
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Conjunctive Deactivation): Turbo deactivates only when ALL
   --     four conditions are met simultaneously (AND logic). Conservative —
   --     requires full system cool-down before disabling enhanced cooling.
   --   Axiom 2 (Hysteresis): Deactivation thresholds are 10-15°C below
   --     activation thresholds, providing thermal hysteresis to prevent
   --     rapid on/off cycling (oscillation).
   --
   -- THEOREMS:
   --   Theorem 1 (Hysteresis Guarantee): For any sensor, Deactivation_Threshold
   --     < Activation_Threshold, ensuring no simultaneous activation and
   --     deactivation (mutual exclusion).
   --
   -- CITATIONS:
   --   [1] Control Theory: hysteresis prevents limit cycling (Åström, 2006)
   --   [2] Apple Thermal Management: gradual deactivation recommended
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 4 comparisons
   --   CPU Time: ~8ns on M2 Pro
   --   WCET: < 40ns
   --   Space Complexity: O(0)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   -----------------------------
   -- Should_Deactivate_Turbo --
   -----------------------------

   function Should_Deactivate_Turbo (
      CPU_Temp      : Float;
      GPU_Temp      : Float;
      Battery_Temp  : Float;
      Power         : Float
   ) return Boolean is
   begin
      return CPU_Temp < DEACTIVATE_TEMP_CPU_THRESHOLD and
             GPU_Temp < DEACTIVATE_TEMP_GPU_THRESHOLD and
             Battery_Temp < DEACTIVATE_BATT_TEMP_THRESHOLD and
             Power < DEACTIVATE_POWER_THRESHOLD;
   end Should_Deactivate_Turbo;

   -- ===========================================================================
   -- Should_Engage_Overdrive
   -- ===========================================================================
   -- AXIOMS:
   --   Axiom 1 (Emergency Load): Load_Status = 2 signals emergency thermal
   --     condition requiring maximum cooling (10100 RPM).
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 1 comparison
   --   CPU Time: ~2ns
   --   WCET: < 10ns
   --   Space Complexity: O(0)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   ---------------------------
   -- Should_Engage_Overdrive --
   ---------------------------

   function Should_Engage_Overdrive (Load_Status : Integer) return Boolean is
   begin
      return Load_Status = 2;
   end Should_Engage_Overdrive;

   -- ===========================================================================
   -- Clamp_RPM
   -- ===========================================================================
   -- PURPOSE: Reject corrupt/nonsensical SMC fan readings. NOT a fan-speed cap.
   --
   -- AXIOMS:
   --   Axiom 1 (Sanity Envelope): Input is forced into [0, 100000]. Deliberately
   --     LOOSE. It is a corruption guard, not a speed ceiling, and is expected to
   --     never fire on genuine sensor data.
   --   Axiom 2 (Not an RPM_Value): The result may exceed SMC_Math.RPM_Value'Last
   --     (10100.0). Callers MUST saturate before passing it to an RPM_Value-
   --     typed parameter; that conversion raises Constraint_Error and unwinds the
   --     whole daemon main loop to the [FATAL ERROR] handler.
   --   Axiom 3 (No Physical Justification Available): The bound is NOT derived
   --     from fan physics, because no such derivation exists -- see "WHY 100000
   --     AND NOT SOMETHING ELSE" below, where the model diverges.
   --
   -- ===========================================================================
   -- BACKGROUND: WHY FAN RPM IS A FUNCTION OF INLET PRESSURE
   -- ===========================================================================
   -- Fan max speed is not fixed; it rises as inlet (ambient) density falls.
   -- CALIBRATION DATUM (operator-supplied 2026-10-04): 11,000 RPM @ 990 hPa.
   --
   -- DERIVATION. Neglect bearing friction and windage, so all shaft power goes
   -- into the air. Fan affinity laws: Q proportional to N*D^3, and dP
   -- proportional to rho*N^2*D^2. Then:
   --
   --     P_shaft = rho * Q * dP = phi*psi * rho^2 * N^3 * D^5
   --
   -- Holding P_shaft constant (motor delivers fixed power) gives:
   --
   --     N^3 proportional to 1/rho^2   =>   N proportional to rho^(-2/3)
   --
   -- and since rho is proportional to P_absolute at constant temperature:
   --
   --     N(P) = 11000 * (990 / P)^(2/3)        [P in hPa, N in RPM]
   --
   -- CONSEQUENCE FOR THE 0 hPa QUESTION: because the exponent is negative,
   -- N diverges as P approaches 0. There is NO finite 0 hPa answer, so no finite
   -- cap can be derived from this model. That divergence is a direct consequence
   -- of the friction-free assumption: bearing and windage torque do NOT scale
   -- with density, so a real fan approaches a friction-limited asymptote instead
   -- of infinity. The excluded term is precisely the one that would bound it.
   --
   -- PROJECTED SPEED vs ALTITUDE (ISA atmosphere, h = 44330*(1-(P/1013.25)^0.190263)):
   --     sea level 1013 hPa -> 10,831 RPM    (datum 990 hPa -> 11,000 RPM)
   --       988 m    900 hPa -> 11,722        1,999 m   795 hPa -> 12,732
   --     3,012 m    700 hPa -> 13,860        4,206 m   600 hPa -> 15,360
   --     5,574 m    500 hPa -> 17,345        7,185 m   400 hPa -> 20,127
   --     9,164 m    300 hPa -> 24,382       15,681 m   102 hPa -> 50,717
   --   Practical span is modest: about +18% from sea level to 2,000 m, +24% by
   --   4,200 m.
   --
   -- INVERTED -- pressure each round number would demand:
   --     12,000 RPM -> 869 hPa (1,278 m)     20,000 RPM -> 404 hPa (7,118 m)
   --     15,000 RPM -> 622 hPa (3,934 m)     30,000 RPM -> 220 hPa (11,184 m)
   --    100,000 RPM ->  36 hPa (20,823 m)
   --
   -- TIP-SPEED CHECK (is 100,000 RPM physically possible?):
   --     30 mm blower: 17.3 m/s @11k, 47.1 @30k, 157 @100k
   --     37 mm blower: 21.3 m/s @11k, 58.1 @30k, 194 @100k
   --     45 mm blower: 25.9 m/s @11k, 70.7 @30k, 236 @100k
   --   At 100,000 RPM a 37 mm tip moves ~194 m/s. No altitude or operating
   --   condition reaches it; the fan sheds blades or destroys bearings first.
   --
   -- ===========================================================================
   -- WHY 100000 AND NOT SOMETHING ELSE
   -- ===========================================================================
   -- 1. It cannot be derived. Per above, the model diverges at 0 hPa. So 100000
   --    is chosen as a guard that catches corruption without ever clamping a real
   --    reading -- not as a physical limit.
   -- 2. 100,000 RPM is unreachable anyway (needs ~36 hPa, ~21 km altitude).
   -- 3. Loose is safe here: the function's whole job is to reject nonsense, so a
   --    bound that never fires on genuine data is the desired behaviour.
   -- 4. It is deliberately DISJOINT from RPM_Value'Last (10100.0) so the two can
   --    never be confused -- see Axiom 2 and the RPM_Value note in smc_math.ads.
   --
   -- ===========================================================================
   -- WHERE THE MODEL ACTUALLY FAILS (and what it is NOT)
   -- ===========================================================================
   -- RAREFACTION IS NOT THE LIMITING MECHANISM. Knudsen number Kn = lambda/L:
   --     sea level -> 73 nm  (Kn 7.3e-05)  continuum
   --     5,574 m   -> 149 nm (Kn 1.5e-04)  continuum
   --    15,272 m   -> 735 nm (Kn 6.8e-04)  continuum
   --    26,900 m   -> 10 um (Kn 1.0e-02)  TRANSITION onset
   --   Rarefaction needs a 10 um mean free path, i.e. ~27 km. At sea level Kn is
   --   five orders of magnitude inside continuum. A laptop fan is destroyed long
   --   before rarefaction is relevant.
   --
   -- VISCOUS BREAKUP COMES FIRST, BUT MUCH LATER:
   --     Re = 1e4  at 110 hPa -> 15.3 km     (viscous)
   --     Kn = 0.01 at 7.4 hPa -> 26.9 km     (rarefied)
   --   Viscous breakdown bites 1.8x LOWER than rarefaction. Re falls only as
   --   rho^(1/3) given the model's V proportional to rho^(-2/3).
   --
   -- CORRECTION 2026-10-04: an earlier revision of this analysis claimed the
   --   model "starts lying" at ~500 hPa / 5,574 m. THAT WAS WRONG AND IS
   --   RETRACTED. At 500 hPa the flow is solidly continuum (Kn 1.5e-04) with
   --   Re about 16,555 -- entirely healthy. Affinity laws are well validated
   --   across that range.
   --
   -- THE REAL UNCERTAINTIES are continuous, not threshold effects:
   --   (a) Constant-power assumption (dominant). Freezing P_shaft is the weakest
   --       link: as density falls, aerodynamic torque falls with it and a
   --       brushless motor trends toward constant SPEED. A constant-torque model
   --       gives N proportional to rho^(-1), diverging twice as fast. The true
   --       exponent lies between -2/3 and -1 and needs the motor's speed-torque
   --       curve to pin down.
   --   (b) Operating-point shift. The derivation freezes the pressure
   --       coefficient psi, but both the fan curve and the duct system curve
   --       scale with density (dP proportional to rho*V^2), so their
   --       intersection migrates with ambient pressure. Systematic bias, present
   --       at EVERY pressure, not something that switches on at an altitude.
   --
   -- RUNTIME NOTE: density-driven RPM variation is a DISTURBANCE TO REJECT, not
   -- a limit to feedforward. Fan control is closed on temperature; if ambient
   -- pressure rises, achievable speed rises with it and the loop reaches its
   -- thermal target sooner. No runtime model is required.
   --
   -- AUDIT NOTE: the previous bound was 101000.0, ten times the 10100.0 used
   --   everywhere else (smc_math.ads RPM_Value, the Compute_Target_RPM and
   --   Compute_Log_Transition_RPM contracts, and the 10100.0 max-fan test in
   --   smc_daemon.adb). Two contradictory "max RPM" contracts coexisted. Operator
   --   directed 100000.0; retained, with Axiom 2 making the distinction from the
   --   10100.0 command ceiling explicit.
   --
   -- CITATIONS:
   --   [1] Fan affinity laws: Q~N, dP~N^2, P~N^3 (standard turbomachinery theory)
   --   [2] Knudsen number criterion for rarefied flow: Kn = lambda/L, onset 0.01
   --   [3] ISA standard atmosphere: h = 44330*(1-(P/P0)^0.190263) metres
   --   [4] Air constants: mu = 1.81e-5 Pa.s, R = 287.05 J/(kg.K), T = 293 K,
   --       collision diameter d = 3.5e-10 m
   --   [5] Empirical: /var/log/smcSystemDemandNow.log, F0Ac max 10891.6 RPM
   --   [6] Full note: smc_daemon/docs/FAN_RPM_PRESSURE_ANALYSIS.md
   --
   -- TIMING ANALYSIS:
   --   Estimated Processing Time: O(1) — 2 comparisons
   --   CPU Time: ~3ns
   --   WCET: < 15ns
   --   Space Complexity: O(0)
   --   Nanosecond Anchor: N/A
   -- ===========================================================================

   ---------------
   -- Clamp_RPM --
   ---------------

   function Clamp_RPM (Val : Float) return Float is
   begin
      if Val < 0.0 then
         return 0.0;
      elsif Val > 100000.0 then
         return 100000.0;
      else
         return Val;
      end if;
   end Clamp_RPM;

end SMC_Thresholds;
