program Divisor_Sum
    ! Declare variables
    implicit none
    integer :: i, j, a, b, c, d
    
    ! Initialize variables
    d = 0
    
    ! Read input loop
    do
        read *, a
        
        ! Calculate e as integer division of a by 2
        e = int(a / 2)
        
        ! Loop through even divisors of a
        do i = 1, e
            c = mod(a, i)
            
            ! Check if a is divisible by i (c == 0)
            if (c == 0) then
                d = d + i
            end if
        end do
        
        ! Print a if d remains 0 (no divisors found)
        if (d == 0) then
            print*, a
        end if
        
        ! Increment a for next iteration
        a = a + 1
    end do
end program Divisor_Sum
