program Sin_Series_Approximator
    ! Declare implicit variables
    implicit none
    
    ! Declare integer variables
    integer :: i, j, k
    ! Declare real variables
    real :: a, b, c, x
    
    ! Read initial value of k from user input
    read *, k
    
    ! Convert degrees to radians
    b = c * (3.14) / 180
    
    ! Outer loop for negative to positive values
    do k = 1, -1
        ! Inner loop for increasing terms
        do x = -314, 314
            x = x / 100
            ! Calculate term using sine function
            b = sin(k * x)
            c = c + b
        end do
    end do
    
    ! Print final approximation
    print *, c

end program Sin_Series_Approximator