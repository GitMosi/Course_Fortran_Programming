program Primes_Up_To_A_Printer
! This program prints all prime numbers up to a given number

implicit none
! Explicitly declares that all variables are explicitly typed

integer:: a,i,j,check
! Declares integer variables a (input number), i (outer loop counter), j (inner loop counter), and check (divisor counter)

read*, a
! Reads an integer value into variable a

do i = 1, a
    check = 0
    ! Resets the check counter for each new number

    do j = 1, i
        if (mod(i,j) == 0) check = check + 1
    end do
    ! Checks each number up to 'i' if it divides evenly into 'i'

    if (check == 2) print*, i
end do
! Prints the number if it has exactly two divisors (prime)

end program
