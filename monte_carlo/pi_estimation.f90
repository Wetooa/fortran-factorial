PROGRAM monte_carlo_pi
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 1000000000  ! Number of random points
  INTEGER :: i, count_inside
  REAL :: x, y, distance, pi_estimate

  ! Initialize random number generator
  CALL RANDOM_SEED()

  count_inside = 0

  ! Perform Monte Carlo simulation
  DO i = 1, N
    CALL RANDOM_NUMBER(x)
    CALL RANDOM_NUMBER(y)
    distance = x**2 + y**2

    IF (distance <= 1.0) THEN
      count_inside = count_inside + 1
    END IF
  END DO

  ! Estimate pi
  pi_estimate = 4.0 * REAL(count_inside) / REAL(N)

  PRINT *, "Monte Carlo Estimate of Pi: ", pi_estimate

END PROGRAM monte_carlo_pi

