program Reverse_Number
! This is the main program declaration

implicit none
! Declare variables without initializing them

integer :: a,b,i,n
! Declare integer variables a, b, i, and n

read*, a
! Read a single value from input and store it in variable a

do while (a>0)
! Start a do-while loop that continues as long as a is greater than zero
    b = mod(a, 10)
    ! Calculate the remainder of a divided by 10 (get the last digit)
    a = a / 10
    ! Divide a by 10 (remove the last digit)
    i = i * 10 + b
    ! Multiply i by 10 and add the last digit of a
end do
! End the do-while loop

print*, i
! Print the final value of i

end program Reverse_Number
! End the main program
