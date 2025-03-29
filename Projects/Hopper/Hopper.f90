! This program prints numbers from 1 to 100, printing 'HOP' for multiples of 7
program Hopper
implicit none
integer :: a ! Declare variable a as an integer

! Start loop from 1 to 100
do a = 1, 100
    ! Check if the current number is divisible by 7
    if (mod(a, 7) == 0) then
        ! If divisible by 7, print 'hop'
        print*, 'HOP'
    else
        ! If not divisible by 7, print the number itself
        print*, a
    end if
end do
! End of the program
end program Hopper
