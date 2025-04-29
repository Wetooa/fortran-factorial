PROGRAM Hello
  ! Comments use !
  IMPLICIT NONE

  REAL :: real_number = 10;

  ! In Fortran, the * in the PRINT statement is used to denote list-directed output. This means that Fortran will decide how to format the data based on the types of variables being printed, and it will automatically adjust the output formatting according to the data type and content.
  PRINT *, "Hello, World!", real_number, "Why is it tabbed!"
END PROGRAM Hello
