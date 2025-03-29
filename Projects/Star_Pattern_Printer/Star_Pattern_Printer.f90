program Star_Pattern_Printer
! This program prints a series of patterns using asterisks (*)

implicit none
! Explicitly declares that all variables are explicitly typed

integer i, j
! Declares integer variables i and j

do i = 1, 10
    print*, ('*', j = 1, i)
end do
! Prints a pattern where asterisks increase from 1 to 10 rows

do i = 10, 1, -1
    print*, ('*', j = 1, i)
end do
! Prints a pattern where asterisks decrease from 10 to 1 rows

do i = 1, 8
    print*, ('*', j = 1, i, 2)
end do
! Prints a pattern where asterisks increase in pairs up to 8 rows

end program Star_Pattern_Printer
! Marks the end of the program
