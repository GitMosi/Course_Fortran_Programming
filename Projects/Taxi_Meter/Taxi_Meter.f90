program Taxi_Meter
! Declare implicit typing
implicit none

! Declare real variable a
real:: a

! Print instruction message
print*, 'Please Insert Traveled Distance'

! Read input value for variable a
read*, a

! Start if statement block
if (a<=10) then
    ! Calculate fare for distances up to 10 km
    print*, 'Price =', a*5000, 'Toman'
else if (a<=20 .AND. a>10) then
    ! Calculate fare for distances between 11 and 20 km
    print*, 'Price =', 50000+((a-10)*4000), 'Toman'
else if (a<=30 .AND. a>20) then
    ! Calculate fare for distances between 21 and 30 km
    print*, 'Price =', 90000+((a-20)*3000), 'Toman'
else
    ! Calculate fare for distances over 30 km
    print*, 'Price =', 100000+((a-30)*2500), 'Toman'
end if

! Unconditional jump back to the start (goto 1)
goto 1

end program Taxi_Meter
