program Sum_Digits
implicit none
integer :: number, digit, sum, power, i

print*, "Enter a positive integer:"
read*, number

if (number <= 0) then
    print*, "Invalid input. Please enter a positive integer."
    stop
end if

sum = 0
power = 1
do i = 1, floor(log(number, 10))
    digit = mod(number, 10)
    sum = sum + digit * power
    number = number / 10
    power = power * 10
end do

print*, "Sum of digits:", sum

end program Sum_Digits
