PROGRAM sqrt_sum
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 100000000
  INTEGER :: i
  REAL(8) :: sum
  REAL(8) :: start_time, end_time

  sum = 0.0D0
  CALL CPU_TIME(start_time)
  PRINT *, "Starting Fortran calculation..."
  
  DO i = 1, N
    sum = sum + SQRT(REAL(i, 8))
    IF (MOD(i, N / 10) == 0) THEN
      PRINT *, "Fortran progress: ", i * 100 / N, "%"
    END IF
  END DO

  CALL CPU_TIME(end_time)

  PRINT *, "Fortran Sum: ", sum
  PRINT *, "Fortran Calculation Time: ", end_time - start_time, " seconds"
END PROGRAM sqrt_sum
