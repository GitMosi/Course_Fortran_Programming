program File_Contents_Decoder
implicit none

integer :: i, j, unit_number
character(len=2) :: b
logical :: end_of_file

unit_number = 10
open(unit_number, file='Encoded.txt', status='old', action='read')

do
    read(unit_number, '(A2)', end=10) b
    print *, b
end do

10 continue
close(unit_number)

end program File_Contents_Decoder
