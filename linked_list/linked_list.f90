MODULE linked_list_module
  IMPLICIT NONE
  TYPE :: Node
     INTEGER :: data
     TYPE(Node), POINTER :: next => NULL()
  END TYPE Node

CONTAINS
  SUBROUTINE insert_first(head, value)
    TYPE(Node), POINTER :: head
    INTEGER :: value
    TYPE(Node), POINTER :: new_node

    ! Create a new node
    ALLOCATE(new_node)
    new_node%data = value
    new_node%next => head

    ! Insert at the beginning
    head => new_node
  END SUBROUTINE insert_first

  SUBROUTINE insert_last(head, value)
    TYPE(Node), POINTER :: head
    INTEGER :: value
    TYPE(Node), POINTER :: new_node, current

    ! Create a new node
    ALLOCATE(new_node)
    new_node%data = value
    new_node%next => NULL()

    ! If the list is empty, the new node becomes the head
    IF (associated(head)) THEN
      current => head
      ! Traverse to the last node
      DO WHILE (associated(current%next))
        current => current%next
      END DO
      current%next => new_node
    ELSE
      head => new_node
    END IF
  END SUBROUTINE insert_last

  SUBROUTINE delete_node(head, value)
    TYPE(Node), POINTER :: head
    INTEGER :: value
    TYPE(Node), POINTER :: current, previous

    ! Check if the list is empty
    IF (.NOT. associated(head)) THEN
      PRINT *, "List is empty, nothing to delete."
      RETURN
    END IF

    current => head
    previous => NULL()

    ! Search for the node to delete
    DO WHILE (associated(current))
      IF (current%data == value) THEN
        IF (associated(previous)) THEN
          previous%next => current%next
        ELSE
          head => current%next
        END IF
        DEALLOCATE(current)
        PRINT *, "Node with value ", value, " deleted."
        RETURN
      END IF
      previous => current
      current => current%next
    END DO

    PRINT *, "Node with value ", value, " not found."
  END SUBROUTINE delete_node

  SUBROUTINE print_list(head)
    TYPE(Node), POINTER :: head
    TYPE(Node), POINTER :: current

    current => head
    IF (.NOT. associated(current)) THEN
      PRINT *, "List is empty."
      RETURN
    END IF

    ! Print each node's data
    PRINT *, "Linked List: "
    DO WHILE (associated(current))
      PRINT *, current%data
      current => current%next
    END DO
  END SUBROUTINE print_list

END MODULE linked_list_module

PROGRAM linked_list_example
  USE linked_list_module
  IMPLICIT NONE

  TYPE(Node), POINTER :: head
  INTEGER :: value

  ! Initialize the head to null (empty list)
  head => NULL()

  ! Insert some values at the beginning and end of the list
  CALL insert_first(head, 10)
  CALL insert_first(head, 20)
  CALL insert_last(head, 30)
  CALL insert_last(head, 40)

  ! Print the linked list
  CALL print_list(head)

  ! Delete a node
  CALL delete_node(head, 20)

  ! Print the list again after deletion
  CALL print_list(head)

END PROGRAM linked_list_example
