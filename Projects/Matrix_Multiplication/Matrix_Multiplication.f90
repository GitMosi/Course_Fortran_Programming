program Matrix_Multiplication
implicit none
integer :: i, j, k, l, m, n, io
integer, allocatable :: a(:,:), b(:,:), c(:,:)
character(len=20) :: filename1 = '1.txt', filename2 = '2.txt'

! Read dimensions from file names
read(filename1(1:1), *) m
read(filename1(2:2), *) n
read(filename2(1:1), *) l
read(filename2(2:2), *) k

! Allocate arrays
allocate(a(m,n))
allocate(b(l,k))
allocate(c(m,k))

! Read matrices from files
open(unit=10, file=filename1)
do i = 1, m
    read(10, *) (a(i,j), j = 1, n)
end do
close(10)

open(unit=20, file=filename2)
do i = 1, l
    read(20, *) (b(i,j), j = 1, k)
end do
close(20)

! Perform matrix multiplication
c = 0
do i = 1, m
    do j = 1, k
        do o = 1, n
            c(i,j) = c(i,j) + a(i,o) * b(o,j)
        end do
    end do
end do

! Print result
print *, "Matrix A:"
do i = 1, m
    print *, (a(i,j), j = 1, n)
end do

print *, "Matrix B:"
do i = 1, l
    print *, (b(i,j), j = 1, k)
end do

print *, "Result Matrix C:"
do i = 1, m
    print *, (c(i,j), j = 1, k)
end do

deallocate(a, b, c)

end program Matrix_Multiplication
