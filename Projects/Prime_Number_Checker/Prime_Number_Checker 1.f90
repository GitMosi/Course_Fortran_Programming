program Prime_Number_Checker
    ! Declare variables
    implicit none
    integer :: i, n, check, k
    
    ! Read input loop
    do n = 2, 100000000
        k = 0
        
        ! Check if number is prime
        do i = 2, n - 1
            if (mod(n, i) == 0) then
                k = k + 1
                exit
            end if
        end do
        
        ! Print if no divisors found (prime number)
        if (k == 0) then
            print*, n
        end if
        
        ! Increment n for next iteration
        n = n + 1
    end do
end program Prime_Number_Checker
