

MODULE math_utils

  IMPLICIT NONE

CONTAINS
  FUNCTION c_to_f(celsius) RESULT(fahrenheit)
    ! INTENT(IN) -> Read Only
    ! INTENT(OUT) -> Write Only
    ! INTENT(INOUT) -> Read and Write

    ! Needs to be done since this is statically typed
    REAL, INTENT(IN) :: celsius;
    REAL :: fahrenheit;
    fahrenheit = celsius * 9.0 / 5.0 + 32.0;

  END FUNCTION c_to_f

  FUNCTION f_to_c(fahrenheit) RESULT(celsius)

    REAL, INTENT(IN) :: fahrenheit;
    REAL :: celsius;
    celsius = (fahrenheit - 32.0) * 5.0 / 9.0;

  END FUNCTION f_to_c

END MODULE math_utils

