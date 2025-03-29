program Column_Tupple_Replacement
implicit none

integer m(2,4),i,j,b(4,2)

do i=1,2
	do j=1,4
		read*,m(i,j)
	end do
end do
do i=1,2
	write(*,10)(m(i,j),j=1,4)
	10 format(1x,4i4)
end do
 
do j=1,4
	do i=1,2
		b(j,i)=m(i,j)
	end do
end do
do j=1,4
	write(*,20)(b(j,i),i=1,2)
	20 format(1x,2i4)
end do

end program