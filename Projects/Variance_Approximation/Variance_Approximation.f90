program Variance_Approximation
! This program calculates the mean of squares minus the square of means

implicit none
! Explicitly declares that all variables are explicitly typed

integer::a,i
! Declares integer variable a (for number of elements) and i (loop counter)

real::b,c,sum_1,sum_2,ch_1,ch_2,ch_3,variance
! Declares real variables for calculations

read*, a
! Reads the number of elements into variable a

do i=1,a
    read*, b
    sum_1=sum_1+b
    c=b**2
    sum_2=sum_2+c
end do
! Reads values into b, updates sum_1 and sum_2

ch_1=sum_1**2
ch_2=sum_2*a
ch_3=a*(a-1)
variance=sqrt((ch_2-ch_1)/ch_3)

print*, "Variance_Approximation is: ",variance

end
