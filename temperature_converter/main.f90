

PROGRAM main 

  USE math_utils;
  IMPLICIT NONE;

  REAL :: celsius, fahrenheit, celsius2;

  PRINT *, "Enter temperature in Celsius (C°): ";
  READ (*, *) celsius;

  fahrenheit = c_to_f(celsius);
  celsius2 = f_to_c(fahrenheit);

  PRINT *, "Temperature in Fahrenheit (F°): ", fahrenheit;
  PRINT *, "Temperature in Celsius (C°): ", celsius2;

END PROGRAM main
