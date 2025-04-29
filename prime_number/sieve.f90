PROGRAM seive

  INTEGER, PARAMETER :: N = 1000; ! Integer with default number
  LOGICAL :: is_prime(0:N) ! NOTE: By default, Fortran arrays are 1-indexed, we add 0:N to make it 0-indexed

  is_prime = .TRUE. ! Initialize all as prime
  is_prime(0) = .FALSE. 
  is_prime(1) = .FALSE.

  ! Sieve of Eratosthenes
  DO i = 2, INT(SQRT(REAL(N)))
    IF (is_prime(i)) THEN
      DO j = i * i, N, i
        is_prime(j) = .FALSE.
      END DO
    END IF
  END DO


  ! Print all prime numbers
  DO i = 0, N
    IF (is_prime(i)) THEN
      PRINT *, i, " is prime"
    END IF
  END DO

END PROGRAM
