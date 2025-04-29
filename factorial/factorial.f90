
PROGRAM Factorial
    IMPLICIT NONE
    INTEGER :: n, iterativeResult, recursiveResult

    PRINT *, "Enter a number to calculate its factorial: "
    READ *, n

    iterativeResult = IterativeFactorialFunction(n)
    recursiveResult = RecursiveFactorialFunction(n)

    PRINT *, "The factorial of ", n
    PRINT *, "Iterative: ", iterativeResult
    PRINT *, "Recursive: ", recursiveResult

CONTAINS

  ! Iterative
  FUNCTION IterativeFactorialFunction(num) RESULT(fact)
      IMPLICIT NONE
      INTEGER, INTENT(IN) :: num
      INTEGER :: fact, i

      fact = 1
      DO i = 1, num
          fact = fact * i
      END DO
  END FUNCTION IterativeFactorialFunction

  ! Recursive
  ! Function can be pure 
  RECURSIVE PURE FUNCTION RecursiveFactorialFunction(num) RESULT(fact)
      IMPLICIT NONE
      INTEGER, INTENT(IN) :: num
      INTEGER :: fact

      IF (num <= 1) THEN
        fact = 1
      ELSE
        fact = RecursiveFactorialFunction(num - 1) * num
      END IF

  END FUNCTION RecursiveFactorialFunction


END PROGRAM Factorial
