#!/bin/bash

# Compile C++ and Fortran programs
g++ -O2 sqrt_sum.cpp -o sqrt_cpp
gfortran -O2 sqrt_sum.f90 -o sqrt_fortran

# Run C++ in the background and redirect output to a log file
echo "Running C++ in background..."
(time ./sqrt_cpp) >output_cpp.txt 2>&1 &

# Run Fortran in the background and redirect output to a different log file
echo "Running Fortran in background..."
(time ./sqrt_fortran) >output_fortran.txt 2>&1 &

# Wait for both programs to finish
wait

# Print the output from both programs
echo "C++ Calculation Output:"
cat output_cpp.txt
echo "------------------------"

echo "Fortran Calculation Output:"
cat output_fortran.txt
echo "------------------------"

echo "Both calculations are complete!"
