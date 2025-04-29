#include <cmath>
#include <iostream>

int main() {
  const long N = 100000000;
  double sum = 0.0;
  for (long i = 1; i <= N; ++i) {
    sum += std::sqrt(i);
  }
  std::cout << "Sum: " << sum << std::endl;
  return 0;
}
