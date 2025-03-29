program Matrix_Multiplication_Table
    ! Declare variables
    implicit none
    integer :: i, j, n, k
    
    ! Open file for writing
    open(10, file='Matrix_Multiplication_Table.txt')
    
    ! Set n to 10 (number of rows/columns)
    n = 10
    
    ! Write header
    write(10,*) 'Multiplication Table:'
    
    ! Write multiplication table
    do j = 1, n
        do i = 1, n
            k = i * j
            write(10, '(I4)', advance='no') k
            if (i /= n) then
                write(10, *) ''
            end if
        end do
    end do
    
    ! Close file
    close(10)
end program Matrix_Multiplication_Table
