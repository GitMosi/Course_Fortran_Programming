program Matrix_Transposer
    implicit none
    
    ! File handles
    integer :: file_input, file_output
    
    ! Matrix dimensions
    integer :: rows, cols
    
    ! Allocate matrices
    integer, allocatable :: matrix_a(:, :)
    integer, allocatable :: matrix_b(:, :)
    
    ! Loop counters
    integer :: i, j, k
    
    ! Open files
    file_input = 10
    file_output = 20
    open(file_input, file='source.txt')
    open(file_output, file='result.txt')
    
    ! Read matrix dimensions
    print*, 'Enter number of rows and columns for the matrix:'
    read *, rows, cols
    
    ! Allocate matrices
    allocate(matrix_a(rows, cols))
    allocate(matrix_b(cols, rows))
    
    ! Read matrix A from file
    print*, 'Reading matrix A from source.txt...'
    do k = 1, rows
        read(file_input, *) (matrix_a(k, l), l = 1, cols)
    end do
    
    ! Transpose matrix A to B
    print*, 'Transposing matrix A to B...'
    do i = 1, cols
        do j = 1, rows
            matrix_b(j, i) = matrix_a(i, j)
        end do
    end do
    
    ! Write transposed matrix B to file
    print*, 'Writing transposed matrix B to result.txt...'
    do m = 1, cols
        write(file_output, '(3i4)') (matrix_b(m, n), n = 1, rows)
    end do
    
    ! Deallocate matrices
    deallocate(matrix_a)
    deallocate(matrix_b)
    
    ! Close files
    close(file_input)
    close(file_output)
    
end program Matrix_Transposer
