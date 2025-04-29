

PROGRAM matrix_multiplication
  IMPLICIT NONE

  INTEGER, PARAMETER :: N = 3   ! Size of the matrices
  INTEGER :: i, j, k
  REAL :: A(N, N), B(N, N), C(N, N)

  A = RESHAPE([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0], [N, N])
  B = RESHAPE([9.0, 8.0, 7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0], [N, N])
  C = 0.0

  ! Matrix multiplication: C = A * B
  DO i = 1, N
    DO j = 1, N
      DO k = 1, N
        C(i, j) = C(i, j) + A(i, k) * B(k, j)
      END DO
    END DO
  END DO

  PRINT *, "Matrix A:"
  DO i = 1, N
    PRINT *, A(i, :)
  END DO

  PRINT *, "Matrix B:"
  DO i = 1, N
    PRINT *, B(i, :)
  END DO

  PRINT *, "Matrix C (A * B):"
  DO i = 1, N
    PRINT *, C(i, :)
  END DO

END PROGRAM matrix_multiplication
