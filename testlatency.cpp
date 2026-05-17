// filename: latency_ping.cpp
// Compile with: g++ -std=c++11 -O2 -o latency_ping latency_ping.cpp
// Run: ./latency_ping [tolerance_percent] [interval_ms] [num_baseline_samples]

#include <iostream>
#include <chrono>
#include <thread>
#include <vector>
#include <cmath>
#include <cstdlib>

// A simple synthetic workload: perform some floating-point operations
// to simulate a bounded computational task.
static double dummy_work(int iterations) {
    double x = 1.0;
    for (int i = 0; i < iterations; ++i) {
        x = std::sin(x) * 1.000001;  // small, non-trivial operation
    }
    return x;
}

int main(int argc, char* argv[]) {
    // Parse command-line arguments
    double tolerance_percent = 5.0;   // default +5%
    int interval_ms = 1000;           // default 1 second between checks
    int baseline_samples = 10;         // number of samples for baseline

    if (argc > 1) tolerance_percent = std::atof(argv[1]);
    if (argc > 2) interval_ms = std::atoi(argv[2]);
    if (argc > 3) baseline_samples = std::atoi(argv[3]);

    if (tolerance_percent <= 0 || interval_ms <= 0 || baseline_samples <= 0) {
        std::cerr << "Invalid arguments. Usage: " << argv[0]
                  << " [tolerance_percent] [interval_ms] [baseline_samples]\n";
        return 1;
    }

    // Determine a workload size that yields a measurable but low latency.
    // We want it to be stable and low enough not to add significant load.
    // Adjust this constant based on your CPU speed; 1000 iterations is usually
    // a few microseconds on modern CPUs.
    const int WORKLOAD_ITERATIONS = 1000;
    double dummy;  // to prevent optimization

    // --- Baseline measurement ---
    std::cout << "Establishing baseline (" << baseline_samples << " samples)..." << std::endl;
    std::vector<double> baseline_times;
    baseline_times.reserve(baseline_samples);

    for (int i = 0; i < baseline_samples; ++i) {
        auto start = std::chrono::high_resolution_clock::now();
        dummy = dummy_work(WORKLOAD_ITERATIONS);
        auto end = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double, std::micro> elapsed = end - start;
        baseline_times.push_back(elapsed.count());

        // Small delay between baseline samples to avoid cache effects
        std::this_thread::sleep_for(std::chrono::milliseconds(10));
    }

    // Calculate baseline average and standard deviation
    double sum = 0.0;
    for (double t : baseline_times) sum += t;
    double baseline_avg = sum / baseline_samples;

    double sq_sum = 0.0;
    for (double t : baseline_times) sq_sum += (t - baseline_avg) * (t - baseline_avg);
    double baseline_stddev = std::sqrt(sq_sum / baseline_samples);

    std::cout << "Baseline average: " << baseline_avg << " µs, stddev: " << baseline_stddev << " µs\n";

    // Compute threshold: baseline_avg * (1 + tolerance_percent/100)
    double threshold = baseline_avg * (1.0 + tolerance_percent / 100.0);
    std::cout << "Latency threshold (+" << tolerance_percent << "%): " << threshold << " µs\n";

    // --- Periodic monitoring ---
    std::cout << "Monitoring every " << interval_ms << " ms. Press Ctrl+C to stop.\n";
    while (true) {
        auto start = std::chrono::high_resolution_clock::now();
        dummy = dummy_work(WORKLOAD_ITERATIONS);
        auto end = std::chrono::high_resolution_clock::now();

        std::chrono::duration<double, std::micro> elapsed = end - start;
        double latency = elapsed.count();

        if (latency > threshold) {
            std::cout << "WARNING: Latency spike detected! " << latency
                      << " µs exceeds threshold " << threshold << " µs\n";
        }

        // Sleep for the specified interval
        std::this_thread::sleep_for(std::chrono::milliseconds(interval_ms));
    }

    // Dummy use to prevent optimization
    (void)dummy;

    return 0;
}
