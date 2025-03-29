! This program counts the number of non-repeating elements in a matrix
program Unique_Numbers
implicit none

! Declare allocatable arrays for the input matrix and result matrix
integer, allocatable :: a(:,:), c(:,:)
! Declare scalar variables
integer :: b, i, j, k, f, e, g, h

! Open the input file 'data of matris.txt'
open(1, file='data of matris.txt')
! Read the size of the matrix
read*, b
! Allocate memory for the input matrix and result matrix
allocate(a(b,b))
allocate(c(b,b))
c = 0 ! Initialize the result matrix to zero

! Read the matrix from the file
do i = 1, b
    read(1,*) (a(i,j), j=1,b) ! Read each row of the matrix
end do

! Perform the algorithm to count unique elements
do i = 1, b
    do j = 1, b
        do e = 1, b
            do k = 1, b
                ! Check if current position is on the diagonal
                if (i == e) then
                    ! Check if current position is not on the main diagonal
                    if (j /= k) then
                        ! Compare elements
                        if (a(i,j) == a(e,k)) then
                            ! If elements match and not zero
                            if (a(i,j) /= 0) then
                                ! Update result matrix
                                g = i
                                h = j
                                c(g,h) = a(i,j)
                            ! If element is zero, increment by 1
                            else if (a(i,j) == 0) then
                                g = i
                                h = j
                                c(g,h) = a(i,j) + 1
                            end if
                        ! If elements don't match (off-diagonal)
                        end if
                    ! If elements don't match (different rows)
                else if (i /= e) then
                    ! Compare elements
                    if (a(i,j) == a(e,k)) then
                        ! If elements match and not zero
                        if (a(i,j) /= 0) then
                            ! Update result matrix
                            g = i
                            h = j
                            c(g,h) = a(i,j)
                        ! If element is zero, increment by 1
                        else if (a(i,j) == 0) then
                            g = i
                            h = j
                            c(g,h) = a(i,j) + 1
                        end if
                    ! If elements don't match (different rows)
                end if
            end do
        end do
    end do
end do

! Count non-zero elements in result matrix
f = 0
do i = 1, b
    do j = 1, b
        if (c(i,j) /= 0) then
            f = f + 1
        end if
    end do
end do

! Calculate number of non-repeating elements
f = (b**2) - f  

! Print the result
print*, "Number of Unique Numbers : ", f
end program Unique_Numbers
