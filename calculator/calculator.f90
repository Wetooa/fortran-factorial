

PROGRAM calculator

  ! Required so no dynamic declaration of variables is allowed
  IMPLICIT NONE

  ! ALL VARIABLE DECLARATION MUST COME BEFORE ANY CODE ! ! !
  CHARACTER(LEN=1) :: operation
  REAL :: num1, num2
  CHARACTER(LEN=*), PARAMETER :: intro_statement = ""// &
          "/  \    /  \ ____ |  |   ____  ____   _____   ____   _/  |_  ____   \_   _____/___________/  |_____________    ____   \_   ___ \_____  |  |   ____  __ __|  | _____ _/  |_  ___________"// NEW_LINE("A") // &
          "\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \  \   __\/  _ \   |    __)/  _ \_  __ \   __\_  __ \__  \  /    \  /    \  \/\__  \ |  | _/ ___\|  |  \  | \__  \\   __\/  _ \_  __ \"// NEW_LINE("A") // &
          " \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/   |  | (  <_> )  |     \(  <_> )  | \/|  |  |  | \// __ \|   |  \ \     \____/ __ \|  |_\  \___|  |  /  |__/ __ \|  | (  <_> )  | \/"// NEW_LINE("A") // &
          "  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  >  |__|  \____/   \___  / \____/|__|   |__|  |__|  (____  /___|  /  \______  (____  /____/\___  >____/|____(____  /__|  \____/|__|"// NEW_LINE("A") // &
          "       \/       \/          \/            \/     \/                      \/                                \/     \/          \/     \/          \/                \/"
  PRINT *, intro_statement


  PRINT *, "Enter an operation to perform (+, -, *, /): "
  READ (*, '(A)') operation

  PRINT *, "Enter number 1: "
  READ *, num1

  PRINT *, "Enter number 2: "
  READ *, num2

  if (operation == '+') THEN

    PRINT *, "The result of the addition is: ", num1 + num2
  ELSE IF (operation == '-') THEN
    PRINT *, "The result of the subtraction is: ", num1 - num2
  ELSE IF (operation == '*') THEN
    PRINT *, "The result of the multiplication is: ", num1 * num2
  ELSE IF (operation == '/') THEN
    PRINT *, "The result of the division is: ", num1 / num2
  ELSE
    PRINT *, "Invalid operation"
  END IF


END PROGRAM calculator
