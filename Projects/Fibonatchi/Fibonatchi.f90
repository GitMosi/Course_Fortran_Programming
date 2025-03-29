! Program to calculate Fibonacci sequence
program Fibonatchi
implicit none

! Declare array a to store Fibonacci numbers
integer a(20)

! Initialize first two Fibonacci numbers
a(1) = 1
a(2) = 1

! Calculate remaining Fibonacci numbers iteratively
do i = 3, 20
    ! Each number is the sum of the two preceding ones
    a(i) = a(i-1) + a(i-2)
end do

! Print all calculated Fibonacci numbers
print*, (a(i), i=1,20)

end program Fibonatchi
