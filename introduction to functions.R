# Consult the documentation on the mean() function
?mean

# Inspect the arguments of the mean() function
args(mean)

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)

avg_fb <- mean(facebook)

# Inspect avg_li and avg_fb
avg_li

avg_fb

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
total <- linkedin + facebook
avg_sum <- mean(total)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(total, trim = 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
avg_li_basic <- mean(linkedin)

# Advanced average of linkedin
avg_li_advanced <- mean(linkedin, na.rm = TRUE)

# Print results
avg_li_basic
avg_li_advanced

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mad_views <- mean(abs(linkedin - facebook), na.rm = TRUE)

# Print result
mad_views

## Writing functions

# Create a function pow_two()
pow_two <- function(x) {
  x * x
}

# Use the function
pow_two(12)


# Create a function sum_abs()
sum_abs <- function(a, b) {
  abs(a) + abs(b)
}

# Use the function
sum_abs(-2, 3)

# Define the function hello()
hello <- function() {
  print("Hi there!")
  TRUE
}

# Call the function hello()
hello()

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2
  
  if (print_info) {
    print(paste(x, "to the power two equals", y))
  }
  
  return(y)
}

# Will print the message
pow_two(4)

# Will NOT print the message
pow_two(4, FALSE)

Function scoping
An issue that Filip did not discuss in the video is function scoping. It implies that variables that are defined inside a function are not accessible outside that function. Try running the following code and see if you understand the results:

pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x
y was defined inside the pow_two() function and therefore it is not accessible outside of that function. This is also true for the function's arguments of course - x in this case.

Which statement is correct about the following chunk of code? The function two_dice() is already available in the workspace.

two_dice <- function() {
  possibilities <- 1:6
  dice1 <- sample(possibilities, size = 1)
  dice2 <- sample(possibilities, size = 1)
  dice1 + dice2
}

Possible answers


Executing two_dice() causes an error.

Executing res <- two_dice() makes the contents of dice1 and dice2 available outside the function.

* Whatever the way of calling the two_dice() function, R won't have access to dice1 and dice2 outside the function.

Can you tell which one of the following statements is false about the following piece of code?

increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)

a and b equal 7 and 6 respectively after executing this code block.

After the first call of increment(), where a is defined, a equals 7 and count equals 5.

* In the end, count will equal 10.

In the last expression, the value of count was actually changed because of the explicit assignment.

Well done! Given that R passes arguments by value and not by reference, the value of count is not changed after the first two calls of increment(). Only in the final expression, where count is re-assigned explicitly, does the value of count change.


# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
  print("You're popular!")
  return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  } 
}

# Call the interpret function twice
interpret(linkedin[1])

interpret(facebook[2])

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum = TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

Start
  |
  v
Initialize count = 0
  |
  v
For each v in views (loop starts)
  |
  v
+-----------------------------+
| Call interpret(v)           |
|                             |
| If v > 15                   |
|   Print "You're popular!"   |
|   Return v                  |
| Else                        |
|   Print "Try to be more..." |
|   Return 0                  |
+-----------------------------+
  |
  v
Add the returned value to count
  |
  v
Loop until all elements in views are processed
  |
  v
Check if return_sum = TRUE
  |             \
  |              \
Yes                No
  |                 |
  v                 v
Return count       Return NULL
  |
  v
End

Step-by-step example for linkedin = c(16, 9, 13, 5, 2, 17, 14)

count = 0

Loop over 16 → interpret(16) → prints "You're popular!" → returns 16 → count = 16

Loop over 9 → interpret(9) → prints "Try to be more visible!" → returns 0 → count = 16

Loop over 13 → prints message → returns 0 → count = 16

Loop over 5 → prints message → returns 0 → count = 16

Loop over 2 → prints message → returns 0 → count = 16

Loop over 17 → prints "You're popular!" → returns 17 → count = 33

Loop over 14 → prints message → returns 0 → count = 33

# Load the ggplot2 package
library("ggplot2")

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)

# Check out the currently attached packages again
search()

# Chunk 1
library(data.table)
require(rjson)

# Chunk 2
library("data.table")
require(rjson)

# Chunk 3
library(data.table)
require(rjson, character.only = TRUE)

# Chunk 4
library(c("data.table", "rjson"))

Select the option that lists all of the chunks that do not generate an error. The console is yours to experiment in.

Possible answers


Only (1)

* (1) and (2)

(1), (2) and (3)

All of them are valid
return_sum = TRUE → return 33
