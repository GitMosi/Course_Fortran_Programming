program Alphabet_Grade
! This program grades student numbers based on certain criteria

implicit none
! Explicitly declare variables without initialization

real :: a
! Declare real variable for input number

integer :: b
! Declare integer variable for converted number

1 read*, a
! Read a real number from input

b = int(a)
! Convert the input number to an integer

select case (b)
case (17:20)
! If the integer is between 17 and 20
    print*, 'A'
case (14:16)
! If the integer is between 14 and 16
    print*, 'B'
case (11:13)
! If the integer is between 11 and 13
    print*, 'C'
case default
! For all other cases
    print*, 'F'
end select

goto 1
! Jump back to the beginning of the loop

end
! End of the program
