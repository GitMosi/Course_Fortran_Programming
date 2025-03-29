program Matrix_Operations_GCD
! Main program declaration
implicit none

integer,allocatable :: a(:,:),b(:,:),c(:,:)
integer::m,n,p,r,t

! Initialize dimensions
m=3
n=2
p=2
allocate (a(m,n))
allocate (b(n,p))
allocate (c(r,t))

! Read values into array a
do m=1,3
   do n=1,2
      read*, a(m,n)
   end do
end do

! Print array a
do m=1,3
   write(*,10) (a(m,n),n=1,2)
end do
10 format (1x,4i4)

! Read values into array b
do n=1,2
   do p=1,2
      read*, b(n,p)
   end do
end do

! Print array b
do n=1,2
   write(*,20) (b(n,p),p=1,2)
end do
20 format (1x,2i4)

pause

! Perform matrix multiplication
c = matmul(a,b)

! Print result
write(*,*) c

end program Matrix_Operations_GCD
