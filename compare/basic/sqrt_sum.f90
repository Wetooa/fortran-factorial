PROGRAM sqrt_sum
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 100000000
  INTEGER :: i
  REAL(8) :: sum

  sum = 0.0D0
  DO i = 1, N
    sum = sum + SQRT(REAL(i, 8))
  END DO

  PRINT *, "Sum:", sum
END PROGRAM sqrt_sum
