program Sum_Digits
! Declare implicit typing
implicit none

! Declare integer variables a, b, i, n
integer:: a,b,i,n

! Read input value for variable a
read*, a

! Start an infinite loop while a > 0
do while (a>0)
    ! Increment i by 1 (this line should be corrected)
    i=i+1
    
    ! Get the last digit of a by taking modulo 10
    b=mod(a,10)
    
    ! Remove the last digit from a
    a=int(a/10)
    
    ! Add the extracted digit to n
    n=n+b
end do

! Print the final sum
print*,n

end program Sum_Digits
