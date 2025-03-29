program GPA
! This program calculates the model (mean) of a series of numbers

implicit none
! Explicitly declare variables without initialization

integer :: z = 0, s = 0
! Declare integer variables for sum of numbers and count

real :: a = 0, sum = 0
! Declare real variables for input and total sum

10 print*, "Insert Your Grades And After That, The Units of The Course --- Please Enter Numbers Now ----- After Entering All Numbers, Enter '-1'"
read*, a
! Read the first number

if (a == -1) goto 20
! If -1 is entered, skip to the end of the program

read*, z
! Read the count of terms

sum = sum + (a * z)
! Add the product of the number and count to the total sum

s = s + z
! Increment the count

goto 10
! Loop back to the start of the loop

20 print*, 'Model In term shoma =', sum / s
! Calculate and print the model (mean)

pause
! Pause program execution

end
! End of the program
