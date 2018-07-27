# take input from the user
num <- scan("num.txt", what=integer(), quiet=TRUE)
#num = as.integer(readline(prompt="Enter a number: "))
factorial = 1
# check is the number is negative, positive or zero
if(num < 0) {
print("Sorry, factorial does not exist for negative numbers")
} else if(num == 0) {
print("The factorial of 0 is 1")
} else {
for(i in num:1) {
factorial = factorial * i
}
print(paste("The factorial of", num ,"is",factorial))
}
