

PROGRAM factorial_self
  IMPLICIT NONE;

  INTEGER :: i_fact, r_fact, o_fact, n;
  n = 10;

  i_fact = iterative_factorial(n);
  r_fact = recursive_factorial(n);
  o_fact = one_liner_factorial(n);

  PRINT 101, n, i_fact;
  PRINT 101, n, r_fact;
  PRINT 101, n, o_fact;

  101 FORMAT('The factorial of ', I8, ' is ', I8)
CONTAINS

  FUNCTION iterative_factorial(num) RESULT(res)
    INTEGER, INTENT(IN):: num;
    INTEGER :: res, i;
    res = 1;

    DO i = 1, n, 1 ! Start, End (Exclusive), Step
      PRINT 100, i, n, res * i;
      res = res * i;
    END DO
    PRINT *;

  100 FORMAT(I8, ' * ', I8, ' = ', I8)
  ! 100 FORMAT(I8, ' * ', I8, ' = ', I16) ! NOTE: I16 means more bytes therefore bigger padding
  END FUNCTION iterative_factorial


  RECURSIVE FUNCTION recursive_factorial(num) RESULT(res)
    INTEGER, INTENT(IN) :: num;
    INTEGER ::res;

    IF (num <= 1) THEN
      res = 1; 
    ELSE 
      res = num * recursive_factorial(num - 1); 
    END IF;
  END FUNCTION recursive_factorial


  FUNCTION one_liner_factorial(num) RESULT(res)
    INTEGER, INTENT(IN) :: num;
    INTEGER :: res, i;

    res = product([(i, i=1,num)]);
  END FUNCTION one_liner_factorial

END PROGRAM factorial_self

