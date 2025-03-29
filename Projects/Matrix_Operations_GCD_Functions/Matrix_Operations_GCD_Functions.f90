program Matrix_Operations_GCD
! Main program declaration
implicit none

integer:: u,y  ! Declare integer variables u and y
integer,allocatable:: p(:,:)  ! Declare allocatable 2D integer array p
integer:: f3,f4,v  ! Declare integer variables f3, f4, and v
integer:: k,z  ! Declare integer variables k and z
real:: f2,c  ! Declare real variables f2 and c

read*, u,y  ! Read input values for u and y
allocate(p(u,y))  ! Allocate memory for array p

open(10,file='1.txt',status='old',action='read')  ! Open file '1.txt' for reading
do k=1,u  ! Loop through rows of p
   read(10,*) (p(k,z), z=1,y)  ! Read values into p array from file
end do

c=f2(u,y,p)  ! Call function f2
v=f3(u,y,p)  ! Call function f3
print*, c  ! Print value of c
print*, v  ! Print value of v
print*, f4(u,y,p)  ! Call function f4 and print result

end program Matrix_Operations_GCD ! End of main program

! Function declarations
function f1(a,b,m)
implicit none
integer:: i,j,a,b  ! Declare integer variables i, j, a, b
integer,dimension(a,b):: m,f1  ! Declare integer arrays m and f1

do i=1,a
   write(*,*)(m(i,j),j=1,b)  ! Print rows of m array
end do

do j=1,b
   do i=1,a
      f1(j,i)=m(i,j)  ! Assign values from m to f1
   end do
end do

do j=1,b
   write(*,*)(f1(j,i),i=1,a)  ! Print transposed f1 array
end do
end function f1

function f2(r,j,m)
implicit none
integer::r,j  ! Declare integer variables r and j
integer,dimension(r,j):: m  ! Declare integer array m
integer:: i,x,d  ! Declare integer variables i, x, d
real:: f2  ! Declare real variable f2

d=0  ! Initialize d to 0

do i=1,r
   do x=1,j
      d=d+m(i,x)  ! Sum elements of m array
   end do
end do
f2=real(d)/real(r+j)  ! Calculate average and store in f2
end function f2

function f3(r,j,m)
implicit none
integer::r,j  ! Declare integer variables r and j
integer,dimension(r,j):: m  ! Declare integer array m
integer:: a,b,c,big,little,f3  ! Declare integer variables a, b, c, big, little, f3

a=m(1,1)  ! Assign first element of m to a
b=m(r,j)  ! Assign last element of m to b

if (a>b) then 
   big=a  ! If a > b, set big to a
   little=b  ! Set little to b
   
   do big=1,little  ! Start loop from 1 to min(a,b)
      c=mod(a,b)  ! Calculate remainder of a divided by b
      if(c==0) then  ! If remainder is 0
         f3=b  ! Set f3 to b (GCD found)
         exit  ! Exit loop
      else
         a=b  ! Update a to b
         b=c  ! Update b to remainder
         f3=b  ! Set f3 to current b (last non-zero remainder)
      end if
   end do
else if (a<b) then
   big=b  ! If a < b, set big to b
   little=a  ! Set little to a
   
   do big=1,little  ! Start loop from 1 to min(a,b)
      c=mod(b,a)  ! Calculate remainder of b divided by a
      if(c==0) then  ! If remainder is 0
         f3=a  ! Set f3 to a (GCD found)
         exit  ! Exit loop
      else
         b=a  ! Update b to a
         a=c  ! Update a to remainder
         f3=a  ! Set f3 to current a (last non-zero remainder)
      end if
   end do
end if
end function f3

function f4(a,b,m)
implicit none
integer::i,j,a,b,f4  ! Declare integer variables i, j, a, b, f4
integer,dimension(a,b):: m  ! Declare integer array m

f4=m(1,1)  ! Initialize f4 to first element of m
do i=1,a
   do j=1,b
      if (f4<m(i,j)) then  ! Check if current element is smaller than f4
         f4=m(i,j)  ! Update f4 with smaller value
      end if
   end do
end do
end function f4
