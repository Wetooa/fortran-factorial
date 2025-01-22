
PROGRAM Factorial
    IMPLICIT NONE
    INTEGER :: n, result

    PRINT *, "Enter a number to calculate its factorial:"
    READ *, n

    result = FactorialFunction(n)
    PRINT *, "The factorial of", n, "is", result
END PROGRAM Factorial

! Function to calculate factorial
FUNCTION FactorialFunction(num) RESULT(fact)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: num
    INTEGER :: fact, i

    fact = 1
    DO i = 1, num
        fact = fact * i
    END DO
END FUNCTION FactorialFunction
