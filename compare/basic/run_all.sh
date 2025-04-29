#!/bin/bash

# Compile
g++ -O2 sqrt_sum.cpp -o sqrt_cpp
gfortran -O2 sqrt_sum.f90 -o sqrt_fortran

# Run C++
echo "Running C++:"
time ./sqrt_cpp
echo "----------------------"
echo ""

# Run Fortran
echo "Running Fortran:"
time ./sqrt_fortran
echo "----------------------"
echo ""

# Run Python
echo "Running Python:"
time python3 sqrt_sum.py
echo "----------------------"
echo ""
