program QuadraticFunctionTable
    ! Declare implicit variables
    implicit none
    
    ! Declare integer variable for loop counter
    integer :: i, n
    ! Declare real variable for calculation
    real :: a
    
    ! Open file 'table.txt' for writing
    open (10, file='table.txt')
    
    ! Start a loop from -5 to 5
    do i = -5, 5
        ! Calculate a = 2 * i^2
        a = 2 * i ** 2
        
        ! Write current i and calculated a to the file
        write (10, *) i, a
    end do
    
end program QuadraticFunctionTable