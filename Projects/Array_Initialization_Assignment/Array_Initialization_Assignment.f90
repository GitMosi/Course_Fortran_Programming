program Array_Initialization_Assignment
    ! Declare implicit variables
    implicit none
    
    ! Declare an integer variable
    integer :: i
    ! Declare a real array with 12 elements
    real :: a(12)
    
    ! Attempt to assign a string to the second element of the array
    a(2) = 'b'
    
    ! Print the contents of the array
    print *, a

end program Array_Initialization_Assignment