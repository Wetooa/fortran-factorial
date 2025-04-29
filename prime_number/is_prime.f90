

PROGRAM is_prime
  IMPLICIT NONE;

  LOGICAL :: res;
  INTEGER :: n, sqrt_end, i;
  ! NOTE: All declarations must come before statements and expressions.

  res = .TRUE.;
  sqrt_end = INT(n ** 0.5 + 1);

  PRINT *, 'Enter a number: ';
  READ (*, *) n;

  DO i = 2, sqrt_end
    if (MOD(n, i) == 0) THEN
      res = .FALSE.;
      EXIT;
    END IF
  END DO

  if (res) THEN
    PRINT *, n, 'is a prime number';
  ELSE
    PRINT *, n, 'is not a prime number';
  END IF;

END PROGRAM is_prime
