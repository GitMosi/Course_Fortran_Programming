program Reverse_Integer
implicit none
integer :: input, output

print*, "Enter an integer:"
read*, input

call reverse_integer(input, output)
print*, "Reversed integer:", output

contains

function reverse_integer(x) result(f)
integer, intent(in) :: x
integer :: f
integer :: temp, digit, power

f = 0
temp = abs(x)
power = 1

do while (temp > 0)
    digit = mod(temp, 10)
    f = f * 10 + digit
    temp = temp / 10
    power = power * 10
end do

reverse_integer = f
end function reverse_integer

end program Reverse_Integer
