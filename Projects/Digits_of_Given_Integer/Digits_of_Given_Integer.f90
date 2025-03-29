program nasim
! This program calculates the number of digits in a given integer
implicit none
integer :: a,k ! Declare variables a and k as integers

read*, a ! Read an integer value from standard input
k = 1 ! Initialize k to 1

10 if (int(a/10**k) == 0) then ! Check if the current power of 10 divides a without remainder
    print*, k ! If true, print the current value of k
else
    k = k + 1 ! If false, increment k
    goto 10 ! Jump back to the beginning of the loop
end if ! End of the if statement

end
! This is where the program would end, but it's missing the END PROGRAM statement
