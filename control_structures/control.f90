PROGRAM control
  IMPLICIT NONE
  INTEGER :: x
  x = 1

  PRINT *, "Control Structures in Fortran"
  CALL demo_do_loop()
  CALL demo_do_while()
  CALL demo_do_exit_cycle()
  CALL demo_if(x)
  CALL demo_if_else(x)
  CALL demo_select_case(90)

END PROGRAM control

! -----------------------------
SUBROUTINE demo_do_loop()
  IMPLICIT NONE
  INTEGER :: i

  PRINT *, "Looping with DO"
  DO i = 1, 10
    PRINT *, i
  END DO
  PRINT *
END SUBROUTINE demo_do_loop

! -----------------------------
SUBROUTINE demo_do_while()
  IMPLICIT NONE
  INTEGER :: i
  i = 1

  PRINT *, "Looping with DO WHILE"
  DO WHILE (i <= 10)
    PRINT *, i
    i = i + 1
  END DO
  PRINT *
END SUBROUTINE demo_do_while

! -----------------------------
SUBROUTINE demo_do_exit_cycle()
  IMPLICIT NONE
  INTEGER :: i

  PRINT *, "Looping with DO and EXIT"
  DO i = 1, 100
    IF (i == 10) EXIT         ! break out of loop
    IF (MOD(i, 2) == 0) CYCLE ! skip even numbers
    PRINT *, i
  END DO
  PRINT *
END SUBROUTINE demo_do_exit_cycle

! -----------------------------
SUBROUTINE demo_if(x)
  IMPLICIT NONE
  INTEGER, INTENT(IN) :: x

  PRINT *, "IF Statement"
  IF (x > 0) THEN
    PRINT *, "Positive"
  END IF
  PRINT *
END SUBROUTINE demo_if

! -----------------------------
SUBROUTINE demo_if_else(x)
  IMPLICIT NONE
  INTEGER, INTENT(IN) :: x

  PRINT *, "IF-ELSE Statement"
  IF (x > 0) THEN
    PRINT *, "Positive"
  ELSE IF (x < 0) THEN
    PRINT *, "Negative"
  ELSE
    PRINT *, "Zero"
  END IF
  PRINT *
END SUBROUTINE demo_if_else

! -----------------------------
SUBROUTINE demo_select_case(grade)
  IMPLICIT NONE
  INTEGER, INTENT(IN) :: grade

  PRINT *, "SELECT CASE Statement"
  SELECT CASE (grade)
    CASE (:59)
      PRINT *, "Fail"
    CASE (60:79)
      PRINT *, "Pass"
    CASE (80:100)
      PRINT *, "Excellent"
    CASE DEFAULT
      PRINT *, "Invalid score"
  END SELECT
END SUBROUTINE demo_select_case

