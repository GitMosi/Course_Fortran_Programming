program Sum_of_Even_Numbers
    ! Declare variables
    implicit none
    integer :: a, b, i
    real :: c, d
    
    ! Initialize variable d to zero
    d = 0.0
    
    ! Read input loop
    do i = 1, 10
        read *, a
        c = mod(a, 2)
        
        ! Check if number is even (c == 0)
        if (c == 0) then
            d = d + a
        end if
    end do
    
    ! Print result
    print *, d
    
end program Sum_of_Even_Numbers
