program Number_Digit_Counter
    ! Declare variables
    implicit none
    integer :: a, i, n
    
    ! Read input loop
    do while (a >= 0)
        read *, a
        
        ! Count digits
        n = 0
        do i = 1, 10
            if (a < 10**i) exit
            n = n + 1
        end do
        
        ! Print digit count
        print*, n
        
        ! Continue reading input
    end do
end program Number_Digit_Counter
