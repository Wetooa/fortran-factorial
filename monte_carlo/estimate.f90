
PROGRAM monte_carlo
  IMPLICIT NONE
  INTEGER, PARAMETER :: N = 1000000  ! Number of random samples
  INTEGER ::  wins, losses, i, sum, newsum;
  INTEGER :: die1, die2
  REAL :: x, y, estimation

  CALL RANDOM_SEED()  ! Initialize RNG

  wins = 0; losses = 0;

  DO i = 1, N
    CALL RANDOM_NUMBER(x)
    CALL RANDOM_NUMBER(y)

    ! Simulate rolling two dice, NOTE: RANDOM_NUMBER generates a number in [0,1)
    die1 = INT(x * 6) + 1
    die2 = INT(y * 6) + 1
    sum = die1 + die2;

    IF (sum == 7 .OR. sum == 11) THEN
      wins = wins + 1
    ELSE IF (sum == 2 .OR. sum == 3 .OR. sum == 12) THEN
      losses = losses + 1
    ELSE
      DO WHILE (.TRUE.)
        CALL RANDOM_NUMBER(x)
        CALL RANDOM_NUMBER(y)

        die1 = INT(x * 6) + 1
        die2 = INT(y * 6) + 1
        newsum = die1 + die2;

        if (sum == newsum) THEN
          wins = wins + 1;
          EXIT;
        ELSE IF (newsum == 7) THEN
          losses = losses + 1;
          EXIT;
        END IF
      END DO
    END IF
  END DO

  estimation = REAL(wins) / REAL(N);

  PRINT *, "Monte Carlo estimation";
  PRINT *, "Samples used:", N;
  PRINT *, "Estimated Win Percentage =", estimation;

END PROGRAM monte_carlo
