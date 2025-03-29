program Perfect_Number
! This program checks if a given number is perfect

implicit none
! Explicitly declare variables without initialization

integer :: i, n, a, b
! Declare integer variables for loop counter i, limit n, and input a, b

read*, a
! Read the input number from user

n = int(a/2)
! Set the upper limit for checking divisors

do i = 1, n
! Start a loop to check divisors from 1 to half of the number

    if (mod(a, i) == 0) then
    ! Check if i is a divisor of a
        b = b + i
    ! If it is, add it to the sum of divisors
    end if

    if (b == a) then
    ! If the sum of divisors equals the original number
        print*, 'is a Perfect Number'
    ! Then print that it's a perfect number
    end if
end do

end program Perfect_Number
! End of the program
