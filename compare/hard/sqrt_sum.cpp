
#include <chrono>
#include <cmath>
#include <iostream>

int main() {
  const long N = 100000000;
  double sum = 0.0;

  auto start = std::chrono::high_resolution_clock::now();

  std::cout << "Starting C++ calculation..." << std::endl;
  for (long i = 1; i <= N; ++i) {
    sum += std::sqrt(i);
    if (i % (N / 10) == 0) {
      std::cout << "C++ progress: " << (i * 100 / N) << "%" << std::endl;
    }
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double> duration = end - start;

  std::cout << "C++ Sum: " << sum << std::endl;
  std::cout << "C++ Calculation Time: " << duration.count() << " seconds"
            << std::endl;
  return 0;
}
