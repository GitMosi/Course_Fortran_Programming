program Sinus
! Declare implicit typing
implicit none

! Declare real variables a, b, c
real:: a , b , c

! Read input value for variable a
read*, a

! Calculate sine approximation using Taylor series expansion
b = a - ((a**3)/6) + ((a**5)/120) - ((a**7)/5040) + ((a**9)/362880)

! Print the calculated result
print*, b

end program Sinus
