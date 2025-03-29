program Number_Writer_To_File
    ! Declare variables
    implicit none
    real :: a, b
    integer :: i, n
    
    ! Open file for writing
    open(10, file='Numbers.txt')
    
    ! Set n to 10 (number of inputs to read)
    n = 10
    
    ! Write numbers to file
    do i = 1, n
        read *, a
        write(10, *) a
    end do
    
    ! Close file
    close(10)
end program Number_Writer_To_File
