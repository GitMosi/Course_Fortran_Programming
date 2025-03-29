program Decimal_Number
! This is the main program declaration
implicit none
! Declare variables without initializing them

real:: a,b,s
! Declare real variables a, b, s

integer:: i,n
! Declare integer variables i and n

read*, a
! Read a single value from input and store it in variable a

do while (a>0)
! Start a do-while loop that continues as long as a is greater than zero
    a=a/10
    ! Divide a by 10 in each iteration
    i=i+1
    ! Increment the counter i in each iteration
end do
! End the do-while loop

print*, i
! Print the final value of i

end program Decimal_Number
! End the main program
