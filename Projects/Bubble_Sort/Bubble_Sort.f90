program Bubble_Sort
implicit none
integer :: i, j, k, l, io, sort(30, 2), m, n
real :: a, b

! Read numbers from 'last.txt' file
open(unit=10, file='Last.txt', status='old', action='read')
do i = 1, 30
    read(10, *, iostat=io) k
    if (io /= 0) then
        print*, "Error Reading Input File"
        stop
    end if
    sort(i, 1) = k
end do
close(10)

! Perform bubble sort
do n = 1, 29
    do j = 1, 28
        if (sort(j, 2) <= sort(j+1, 2)) then
            ! Swap elements
            l = sort(j+1, 2)
            sort(j+1, 2) = sort(j, 2)
            sort(j, 2) = l
        end if
    end do
end do

! Print sorted array
open(unit=20, file='Exercise.txt', action='write')
do i = 1, 30
    write(20, '(I6)', advance='no') sort(i, 2)
    if (i == 30) then
        write(20, *) ''
    end if
end do
close(20)
print*, "Sorted Array.txt"

end program Bubble_Sort
