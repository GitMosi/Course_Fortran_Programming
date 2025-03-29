program Prime_Number_Checker
! This program checks if a number is prime

implicit none
! Explicitly declares that all variables are explicitly typed

integer:: i,a,check
! Declares integer variables i (loop counter), a (input number), and check (counter for divisors)

read*, a
! Reads an integer value into variable a

check = 0
! Initializes check variable to 0

do i = 1, a
    if (mod(a,i)==0) check = check + 1
end do
! Checks each number up to 'a' if it divides evenly into 'a'

if (check == 2) then
    print*, a , " Is Prime Number!"
else if (.not. check==2) then
    print*, a , " Is Not Prime Number!"
end if

end program
