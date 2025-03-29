program Tringle_Checker
! This is the main program declaration

implicit none
! Declare variables without initializing them

real:: a,b,c
! Declare real variables a, b, and c

! Read three real values from input and store them in variables a, b, and c
read*, a,b,c

if (a+b>c .and. a+c>b .and. b+c>a) then
! Check if the sum of any two sides is greater than the third side
    print*, 'Mosalas tashkil Mishavad'
! Print "Mosalas tashkil Mishavad" if the condition is true
else
print*, 'Mosalas tashkil nmishavad'
! Print "Mosalas tashkil nmishavad" if the condition is false
end if

goto 1
! Jump back to the beginning of the program for another input

end program Tringle_Checker
! End the main program
