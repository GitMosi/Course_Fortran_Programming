program Mean_HarmonicMean_StandardDeviation
! This program calculates mean, harmonic mean, and standard deviation

implicit none
! Explicitly declare variables without initialization

integer :: n, i = 1
! Declare integer variables for number of elements and loop counter

real :: a, sum1, sum2
! Declare real variables for input and sums

do
! Start an infinite loop (will exit when negative number is entered)
    read*, a
    ! Read a real number from input
    
    if (a < 0) exit
    ! Exit the loop if a negative number is entered
    
    sum1 = sum1 + a
    ! Add the number to the sum of all numbers
    
    sum2 = sum2 + (1/a)
    ! Add the reciprocal of the number to the sum of reciprocals
    
    i = i + 1
    ! Increment the count of numbers processed
end do

print*, 'Mean =', sum1/i
! Calculate and print the mean (average)

print*, 'Harmonic Mean =', i/sum2
! Calculate and print the harmonic mean

print*, 'Variance =', sqrt(((sum1/i)**2 + sum1**2 - 2*(sum1/i)*sum1)/i)**(1/2.)
! Calculate and print the standard deviation

end program Mean_HarmonicMean_StandardDeviation