program Even_Divisor_Sum
    ! Declare variables
    implicit none
    integer :: a, b, c, d, i, j, e
    
    ! Initialize variables
    d = 0
    
    ! Read input loop
    do
        read *, a
        
        ! Calculate e as integer division of a by 2
        e = int(a / 2)
        
        ! Loop through even divisors of a
        do j = 1, e
            c = mod(a, e)
            
            ! Check if a is divisible by e (c == 0)
            if (c == 0) then
                d = d + e
            end if
        end do
        
        ! Print a if d remains 0 (no even divisors found)
        if (d == 0) then
            print*, a
        end if
        
        ! Continue reading input
    end do
end program Even_Divisor_Sum
