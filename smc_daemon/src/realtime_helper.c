/* =========================================================================
 * FILE: realtime_helper.c — macOS realtime scheduling & audio workgroup
 * =========================================================================
 *
 * MATHEMATICAL DERIVATION:
 *   This file provides realtime thread scheduling for the SMC daemon's
 *   100ms event loop, using Mach thread policy and audio workgroup APIs.
 *
 *   Axioms:
 *     AXIOM 1: Mach thread policy allows THREAD_TIME_CONSTRAINT_POLICY
 *              for deterministic scheduling (from: Mach Kernel Reference)
 *     AXIOM 2: os_workgroup provides cross-thread scheduling coordination
 *              (from: os/workgroup.h, macOS 12+)
 *     AXIOM 3: nice -20 sets highest user-space priority (from: nice(2))
 *     AXIOM 4: Nanosecond conversion: 1ms = 1,000,000ns
 *              (from: time.h, POSIX standard)
 *   Theories:
 *     THEOREM 1: THREAD_TIME_CONSTRAINT_POLICY guarantees minimum CPU time
 *                within each period (from: Mach scheduling theory)
 *                period >= computation + constraint ensures schedulability
 *     THEOREM 2: Audio workgroup provides priority inheritance across threads
 *                (from: Core Audio documentation, Apple Developer)
 *   Citations:
 *     [1] Mach Kernel Reference — thread_policy_set(3)
 *     [2] Apple Core Audio — Audio Workgroup API (os/workgroup.h)
 *     [3] POSIX nice(2) — process priority
 *     [4] macOS Real-Time Scheduling Guide (Apple Developer)
 *
 * ========================================================================= */

#include "realtime_helper.h"
#include <stdio.h>
#include <mach/mach.h>
#include <mach/mach_time.h>
#include <mach/thread_policy.h>
#include <sys/resource.h>
#include <unistd.h>
#include <os/workgroup.h>

/* =========================================================================
 * GLOBAL: Audio workgroup instance
 * =========================================================================
 * AXIOM 5: Single workgroup shared across all daemon threads
 *   (from: Audio workgroup is process-global, not per-thread)
 * ========================================================================= */
static os_workgroup_t g_workgroup = NULL;

/* =========================================================================
 * PROCEDURE: init_audio_workgroup
 * =========================================================================
 *
 * AXIOMS:
 *   AXIOM 1: g_workgroup is NULL on first call, non-NULL after init
 *   AXIOM 2: os_workgroup_parallel_create may fail (returns NULL)
 *   AXIOM 3: Workgroup name must be unique within the system
 *
 * THEORIES:
 *   THEOREM 1: Parallel workgroup allows all threads equal priority
 *     PROOF: os_workgroup_parallel_create creates a non-hierarchical group
 *     All threads in the group get equal scheduling priority
 *
 * APPLICATIONS:
 *   Called once at daemon startup before creating worker threads
 *   Enables priority inheritance for SMC I/O threads
 *
 * CITATIONS:
 *   [1] os/workgroup.h — os_workgroup_parallel_create(3)
 *   [2] Apple Core Audio — Audio Workgroup documentation
 *
 * TIMING ANALYSIS:
 *   Estimated Processing Time: O(1) — single kernel call
 *   CPU Time: ~10μs (kernel workgroup allocation)
 *   WCET: 1ms (kernel memory allocation may block)
 *   Space Complexity: O(1) — static g_workgroup pointer
 *   Derivation: 1 kernel call × ~10μs = 10μs typical
 *   Hardware Assumes: macOS 12+ with os/workgroup support
 * ========================================================================= */
void init_audio_workgroup(void) {
    if (g_workgroup == NULL) {
        g_workgroup = os_workgroup_parallel_create("com.albertstarfield.smcSystemDemandNow.workgroup", 0);
        if (g_workgroup != NULL) {
            printf("[*] Audio Workgroup created successfully.\n");
        } else {
            /* MURPHY'S LAW: Workgroup creation may fail on older macOS or without entitlements */
            printf("[!] Failed to create Audio Workgroup. Realtime scheduling may be degraded.\n");
            printf("[!] This is non-fatal — daemon will continue without workgroup priority inheritance.\n");
        }
        fflush(stdout);
    }
}

/* =========================================================================
 * PROCEDURE: join_audio_workgroup
 * =========================================================================
 *
 * AXIOMS:
 *   AXIOM 1: g_workgroup must be initialized (non-NULL) before joining
 *   AXIOM 2: token_out is non-null pointer to receive join token
 *   AXIOM 3: Each thread can join at most once per workgroup
 *   AXIOM 4: os_workgroup_join returns 0 on success
 *
 * THEORIES:
 *   THEOREM 1: Join enables priority inheritance for the calling thread
 *     PROOF: Workgroup membership causes kernel to boost thread priority
 *     when another workgroup member is holding a contended resource
 *
 * APPLICATIONS:
 *   Called by each daemon thread (main loop, SMC I/O, telemetry writer)
 *   Ensures all daemon threads participate in priority inheritance
 *
 * CITATIONS:
 *   [1] os/workgroup.h — os_workgroup_join(3)
 *   [2] Priority Inversion — real-time systems theory
 *
 * TIMING ANALYSIS:
 *   Estimated Processing Time: O(1) — single kernel call
 *   CPU Time: ~5μs (kernel thread registration)
 *   WCET: 100μs (kernel may block on thread scheduler)
 *   Space Complexity: O(1) — token stored in caller-provided pointer
 * ========================================================================= */
void join_audio_workgroup(void *token_out) {
    /* MURPHY'S LAW: Validate token_out pointer */
    if (token_out == NULL) {
        printf("[!] join_audio_workgroup called with NULL token_out — cannot store join token.\n");
        fflush(stdout);
        return;
    }

    if (g_workgroup != NULL) {
        int ret = os_workgroup_join(g_workgroup, (os_workgroup_join_token_t)token_out);
        if (ret == 0) {
            printf("[*] Thread successfully joined Audio Workgroup.\n");
        } else {
            printf("[!] Thread failed to join Audio Workgroup (error: %d).\n", ret);
        }
        fflush(stdout);
    } else {
        printf("[!] Cannot join: Audio Workgroup is NULL. Realtime scheduling may be degraded.\n");
        fflush(stdout);
    }
}

/* =========================================================================
 * PROCEDURE: leave_audio_workgroup
 * =========================================================================
 *
 * AXIOMS:
 *   AXIOM 1: g_workgroup must be initialized (non-NULL) before leaving
 *   AXIOM 2: token was obtained from a successful join_audio_workgroup call
 *   AXIOM 3: os_workgroup_leave does not return an error code
 *
 * THEORIES:
 *   THEOREM 1: Leave removes thread from priority inheritance group
 *     PROOF: Thread no longer participates in workgroup scheduling
 *     After leave, thread reverts to normal priority scheduling
 *
 * APPLICATIONS:
 *   Called during daemon shutdown to cleanly release workgroup membership
 *
 * CITATIONS:
 *   [1] os/workgroup.h — os_workgroup_leave(3)
 *
 * TIMING ANALYSIS:
 *   Estimated Processing Time: O(1) — single kernel call
 *   CPU Time: ~2μs (kernel thread deregistration)
 *   WCET: 50μs
 *   Space Complexity: O(1) — no auxiliary space
 * ========================================================================= */
void leave_audio_workgroup(void *token) {
    if (g_workgroup != NULL) {
        /* MURPHY'S LAW: Validate token before leaving */
        if (token == NULL) {
            printf("[!] leave_audio_workgroup called with NULL token — skipping.\n");
            fflush(stdout);
            return;
        }
        os_workgroup_leave(g_workgroup, (os_workgroup_join_token_t)token);
        printf("[*] Thread successfully left Audio Workgroup.\n");
        fflush(stdout);
    }
}

/* =========================================================================
 * PROCEDURE: configure_realtime
 * =========================================================================
 *
 * AXIOMS:
 *   AXIOM 1: period_ms, computation_ms, constraint_ms are positive integers
 *   AXIOM 2: period_ms >= computation_ms + constraint_ms (schedulability)
 *     (from: Mach THREAD_TIME_CONSTRAINT_POLICY — period is the framing interval)
 *   AXIOM 3: nice(-20) requires root privileges (from: nice(2) man page)
 *   AXIOM 4: mach_timebase_info provides ns→tick conversion factor
 *     (from: mach/mach_time.h)
 *
 * THEORIES:
 *   THEOREM 1: THREAD_TIME_CONSTRAINT_POLICY guarantees minimum CPU time
 *     PROOF: Kernel scheduler reserves 'computation' ticks every 'period' ticks
 *     Thread is guaranteed to run for at least 'computation' time each period
 *   THEOREM 2: Nanosecond→tick conversion: ticks = ns × timebase.denom / timebase.numer
 *     PROOF: timebase provides the ratio between Mach absolute time and nanoseconds
 *     numer = ticks per nanosecond, denom = nanoseconds per tick (inverted)
 *   THEOREM 3: period >= computation + constraint is required for schedulability
 *     PROOF: If period < computation + constraint, the thread cannot complete
 *     its work within each period, causing scheduling deadline misses
 *
 * APPLICATIONS:
 *   Called once at daemon startup to configure the main event loop thread
 *   Ensures the 100ms loop cycle is met deterministically
 *
 * CITATIONS:
 *   [1] Mach Kernel Reference — thread_policy_set(3)
 *   [2] THREAD_TIME_CONSTRAINT_POLICY — Mach scheduling policy
 *   [3] nice(2) — process scheduling priority
 *   [4] mach_timebase_info(3) — time conversion
 *   [5] macOS Real-Time Scheduling Guide (Apple Developer)
 *
 * TIMING ANALYSIS:
 *   Estimated Processing Time: O(1) — fixed configuration sequence
 *   CPU Time: ~50μs (setpriority + mach_timebase_info + thread_policy_set)
 *   WCET: 1ms (kernel calls may block on scheduler)
 *   Space Complexity: O(1) — stack-allocated policy struct
 *   Derivation: setpriority ~10μs + timebase_info ~1μs + thread_policy_set ~40μs
 *   Hardware Assumes: ARM64 macOS, kernel thread scheduler
 *
 * MURPHY'S LAW:
 *   - period_ms <= 0: Invalid (FIX: validate input)
 *   - computation_ms > period_ms: Unschedulable (FIX: warn but proceed)
 *   - setpriority fails: Not running as root (FIX: log warning, continue)
 *   - thread_policy_set fails: Kernel rejected policy (FIX: log error)
 *   - mach_timebase_info fails: Should never happen (FIX: check return)
 *   - Integer overflow in ns→tick: Large period_ms could overflow uint64_t
 *     FIX: Validate period_ms < 10000 (10 seconds max)
 * ========================================================================= */
void configure_realtime(int period_ms, int computation_ms, int constraint_ms) {
    /* MURPHY'S LAW: Validate ALL input parameters */
    if (period_ms <= 0) {
        printf("[!] configure_realtime: Invalid period_ms=%d (must be > 0). Using default 100ms.\n", period_ms);
        period_ms = 100;
    }
    if (computation_ms <= 0) {
        printf("[!] configure_realtime: Invalid computation_ms=%d (must be > 0). Using default 10ms.\n", computation_ms);
        computation_ms = 10;
    }
    if (constraint_ms <= 0) {
        printf("[!] configure_realtime: Invalid constraint_ms=%d (must be > 0). Using default 50ms.\n", constraint_ms);
        constraint_ms = 50;
    }
    if (period_ms > 10000) {
        printf("[!] configure_realtime: period_ms=%d exceeds 10s maximum. Capping to 10000ms.\n", period_ms);
        period_ms = 10000;
    }
    if (computation_ms >= period_ms) {
        printf("[!] configure_realtime: computation_ms=%d >= period_ms=%d (unschedulable!). Adjusting.\n",
               computation_ms, period_ms);
        computation_ms = period_ms / 4;
    }
    if (constraint_ms >= period_ms) {
        printf("[!] configure_realtime: constraint_ms=%d >= period_ms=%d (unschedulable!). Adjusting.\n",
               constraint_ms, period_ms);
        constraint_ms = period_ms / 2;
    }

    printf("[*] Configuring realtime scheduling: Period=%dms, Computation=%dms, Constraint=%dms\n",
           period_ms, computation_ms, constraint_ms);
    fflush(stdout);

    /* 1. Set priority to nice -20 (requires root/sudo) */
    if (setpriority(PRIO_PROCESS, 0, -20) == 0) {
        printf("[*] Successfully set thread process priority to nice -20\n");
    } else {
        /* MURPHY'S LAW: Not running as root — daemon continues with default priority */
        printf("[!] Failed to set thread process priority to nice -20 (not running as root)\n");
        printf("[!] Daemon will continue with default priority — scheduling may be less deterministic.\n");
    }
    fflush(stdout);

    /* 2. Set Mach thread policy to THREAD_TIME_CONSTRAINT_POLICY */
    thread_time_constraint_policy_data_t policy;
    mach_timebase_info_data_t timebase;

    /* MURPHY'S LAW: mach_timebase_info can theoretically fail */
    kern_return_t tb_result = mach_timebase_info(&timebase);
    if (tb_result != KERN_SUCCESS) {
        printf("[!] mach_timebase_info failed (error: %d). Cannot configure realtime scheduling.\n", tb_result);
        printf("[!] Daemon will continue with default scheduling.\n");
        fflush(stdout);
        return;
    }

    /* Convert milliseconds to nanoseconds (MURPHY'S LAW: check for overflow) */
    uint64_t period_ns = (uint64_t)period_ms * 1000000ULL;
    uint64_t computation_ns = (uint64_t)computation_ms * 1000000ULL;
    uint64_t constraint_ns = (uint64_t)constraint_ms * 1000000ULL;

    /* Convert nanoseconds to Mach absolute time units (ticks) */
    /* MURPHY'S LAW: timebase.denom could be 0 on exotic hardware */
    if (timebase.denom == 0) {
        printf("[!] mach_timebase_info returned denom=0. Cannot convert to Mach ticks.\n");
        fflush(stdout);
        return;
    }

    policy.period = (uint32_t)((period_ns * timebase.denom) / timebase.numer);
    policy.computation = (uint32_t)((computation_ns * timebase.denom) / timebase.numer);
    policy.constraint = (uint32_t)((constraint_ns * timebase.denom) / timebase.numer);
    policy.preemptible = FALSE;

    kern_return_t kr = thread_policy_set(
        mach_thread_self(),
        THREAD_TIME_CONSTRAINT_POLICY,
        (thread_policy_t)&policy,
        THREAD_TIME_CONSTRAINT_POLICY_COUNT
    );

    if (kr == KERN_SUCCESS) {
        printf("[*] Successfully set thread scheduling policy to THREAD_TIME_CONSTRAINT_POLICY\n");
    } else {
        /* MURPHY'S LAW: Kernel rejected the policy — log full details */
        printf("[!] Failed to set thread scheduling policy (Mach error: %d)\n", kr);
        printf("[!] This may be because: not running as root, invalid parameters, or kernel restriction.\n");
        printf("[!] Daemon will continue with default scheduling.\n");
    }
    fflush(stdout);
}
