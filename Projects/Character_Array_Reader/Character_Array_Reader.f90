program Character_Array_Reader
    ! Declare implicit variables
    implicit none
    
    ! Declare character array with 4 rows and 5 columns
    character, dimension(4,5) :: a
    
    ! Open file 'ramz.txt' for reading
    open (1, file='ramz.txt')
    
    ! Initialize counter for successful reads
    integer :: i = 0, io, j = 0

    ! Read data from file until end-of-file is reached
    do 
        read(1, *, iostat=io)
            ((a(k,l), l=1,3), k=1,3)
        if (io /= 0) exit
        j = j + 1
    end do

    ! Print number of successful reads
    print*, j

end program Character_Array_Reader