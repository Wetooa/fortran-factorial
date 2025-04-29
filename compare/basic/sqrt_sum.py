import math

N = 100_000_000
sum = 0.0
for i in range(1, N + 1):
    sum += math.sqrt(i)

print("Sum:", sum)
