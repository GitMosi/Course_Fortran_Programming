program Array_Sum_First_Element
! This is the main program

implicit none
! Explicitly declares that all variables are explicitly typed

integer:: i
! Declares integer variable i

integer, parameter:: r = 10
! Declares a constant integer variable r with value 10

integer, dimension(r):: m
! Declares an integer array m with size r

call sub_1(r, i, m)
! Calls the subroutine sub_1 with arguments r, i, and m

print*, m(1)
! Prints the first element of array m

end program
! Marks the end of the program

subroutine sub_1(r, i, m)
! Defines the subroutine sub_1 with parameters r, i, and m

implicit none
! Explicitly declares that all variables are explicitly typed

integer, intent(in):: r
! Declares integer variable r with input intent

integer, intent(out), dimension(r):: m
! Declares array m with size r and output intent

integer:: i, k
! Declares integer variables i and k

open(10, file='1.txt', status='old', action='read')
! Opens file '1.txt' for reading

do k = 1, r
    read(10,*) m(k)
end do
! Reads values from file into array m

m(i) = m(1)
! Assigns the first element of m to the i-th element

do i = 2, r
    m(1) = m(1) + m(i)
end do
! Sums all elements except the first one and stores the result in the first element

end subroutine sub_1
! Marks the end of the subroutine
