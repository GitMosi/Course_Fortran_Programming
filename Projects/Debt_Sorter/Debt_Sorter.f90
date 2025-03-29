program Debt_Sorter
! This is the main program
implicit none
! Explicitly declares that all variables are explicitly typed

integer, parameter :: r = 10
! Declares a constant integer variable r with value 10

integer, dimension(r) :: n
! Declares an integer array n with size r

integer, dimension(r) :: b
! Declares an integer array b with size r

integer :: t
! Declares an integer variable t

t = r
! Assigns the value of r to t

read*, n
! Reads input from standard input into array n

open(20, file='1.txt', status='new', action='write')
! Opens file '1.txt' for writing, creating it if it doesn't exist

write(20,*) n
! Writes the contents of array n to the file

pause
! Pauses the program execution

call sub_1(n, r, t, b)
! Calls the subroutine sub_1 with arguments n, r, t, and b

print*, b
! Prints the contents of array b to the console

end program Debt_Sorter
! Marks the end of the program

subroutine sub_1(m, dim_1, dim_2, a)
! Defines the subroutine sub_1 with parameters m, dim_1, dim_2, and a

implicit none
! Explicitly declares that all variables are explicitly typed

integer :: dim_1, dim_2
! Declares integer variables dim_1 and dim_2

integer, dimension(dim_1), intent(inout) :: m
! Declares array m with size dim_1, inout intent

integer, dimension(dim_2), intent(out) :: a
! Declares array a with size dim_2, out intent

integer :: i, j, k
! Declares integer variables i, j, and k

integer :: temp
! Declares integer variable temp

dim_2 = dim_1
! Assigns the value of dim_1 to dim_2

open(10, file='1.txt', status='old', action='read')
! Opens file '1.txt' for reading

do k = 1, dim_1
! Starts a loop iterating over k from 1 to dim_1
    read(10,*) m(k)
! Reads an integer value from file 10 into array element m(k)
end do

do j = 1, dim_1 - 1
! Starts a loop iterating over j from 1 to dim_1 - 1
    do i = j + 1, dim_2   
! Starts an inner loop iterating over i from j + 1 to dim_2
        if (m(j) < m(i)) then
! Checks if element j of array m is less than element i
            temp = m(j)
! Assigns the value of m(j) to temporary variable temp
            m(j) = m(i)
! Assigns the value of m(i) to m(j)
            m(i) = temp
! Assigns the value stored in temp (which was originally m(j)) to m(i)
        end if
! Ends the if statement
    end do
! Ends the inner loop
end do
! Ends the outer loop

a = temp
! Assigns the value of temp to array a

open(30, file='2.txt')
! Opens file '2.txt' for writing

write(30,40) a
! Writes array a to file 30 using format 40

40 format(2x, 5i4)
! Defines format 40 as two spaces followed by five integers with four digits each

end subroutine
! Marks the end of the subroutine
