program Prime_Counter
    implicit none
    
    ! Input variable
    integer :: a
    
    ! Counters
    integer :: i, j, k, count = 0
    
    ! Read input
    read *, a
    
    ! Loop through numbers from 2 to a
    do k = 2, a
        ! Check if k is prime
        if (mod(a, k) == 0) then
            call check_prime(k)
        end if
    end do
    
    ! Print result
    print *, count

contains

    ! Subroutine to check if a number is prime
    subroutine check_prime(x)
        integer, intent(in) :: x
        integer :: i
        
        ! Assume number is prime until proven otherwise
        logical :: is_prime = .true.
        
        ! Check divisibility from 2 to sqrt(x)
        do i = 2, int(sqrt(real(x)))
            if (mod(x, i) == 0) then
                is_prime = .false.
                exit
            end if
        end do
        
        ! Set flag based on primality
        prime_flag = is_prime
    end subroutine check_prime

end program Prime_Counter
