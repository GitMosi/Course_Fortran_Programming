program nasim
  ! Declare the program
  implicit none
  
  ! Declare integer variables for storing input values
  integer :: num1, num2
  
  ! Declare character variables for filenames
  character(20) :: filename1, filename2
  
  ! Declare real, allocatable arrays for matrices
  real, allocatable :: matrix1(:), matrix2(:)
  
  ! Print prompt message
  print*, 'Please insert the number of marks and the file name'
  
  ! Read input values
  read*, num1, filename1
  
  ! Allocate memory for matrix1 based on num1
  allocate(matrix1(num1))
  
  ! Call subroutine to read data from file
  call read_file(num1, filename1, matrix1)
  
  ! Print contents of matrix1
  print*, matrix1
  
  ! Deallocate memory for matrix1 (commented out)
  !deallocate(matrix1)
  
  ! Print prompt message again
  print*, 'Please insert the number of marks and the file name'
  
  ! Read input values for second matrix
  read*, num2, filename2
  
  ! Allocate memory for matrix2 based on num2
  allocate(matrix1(num2))
  
  ! Note: There's a typo here. It should be matrix2 instead of matrix1
  ! Call subroutine to read data from file
  call read_file(num2, filename2, matrix2)
  
  ! Print contents of matrix2
  print*, matrix2
  
end program

! Define the read_file subroutine
subroutine read_file(dim, charac, aa)
  ! Declare intent parameters
  integer, intent(in) :: dim
  character(*), intent(in) :: charac
  real, intent(out), dimension(dim) :: aa
  
  ! Open file for reading
  open(10, file=charac)
  
  ! Read data from file into array
  do i = 1, dim
    read(10, *) aa(i)
  end do
  
  ! Close file
  close(10)
end subroutine read_file
