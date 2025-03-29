program Compare
! This is the main program declaration

implicit none
! Declare variables without initializing them

integer(4):: a
! Declare a 4-byte integer variable a

real(8):: d, i
! Declare 8-byte real variables d and i

real(4):: e
! Declare a 4-byte real variable e

integer(4):: c
! Declare a 4-byte integer variable c (for power station max)

integer(1):: b
! Declare a 1-byte integer variable b

real, parameter:: pi = 3.1415
! Declare a constant real variable pi with value 3.1415

character(32):: v
! Declare a character variable v with length 32

v = 'g o r i l'
! Initialize v with the string 'g o r i l'

a = 2
c = 3
! Assign initial values to variables a and c

d = real(a) / c
! Convert a to real type and divide by c

e = 5 + .2_8
! Add 0.2 (in octal format) to 5

print*, nint(e), v, 6, achar(127)
! Print integer part of e, v, 6, and ASCII code of 127

30 c = c + 1
! Increment c by 1
! Note: In Fortran, labels are just numbers, so no colon needed

print*, achar(c)
! Print ASCII character represented by c

pause
! Pause program execution

goto 30
! Jump back to label 30

end program Compare
! End of program
