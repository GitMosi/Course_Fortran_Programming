program Char_Processor
    implicit none
    
    ! File handle
    integer :: file_unit
    
    ! Character variables
    character(len=30) :: c
    character(len=30), dimension(:) :: b
    
    ! File unit number (default 1)
    file_unit = 1
    
    ! Open file for reading
    open(file_unit, file='1.txt')
    
    ! Read first line from file
    read(file_unit, *) c
    
    ! Initialize character array
    b = ''
    
    ! Process characters (empty loop body)
    do i = 1, 30
        ! No processing done here
    end do
    
    ! Close file
    close(file_unit)
    
end program Char_Processor
