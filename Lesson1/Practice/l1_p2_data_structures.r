# Problem 1: Vector Creation
# Create a vector named fruits that contains the following elements: "apple", "banana", "cherry", "date"
fruits <- c("apple", "banana", "cherry", "date")

# Problem 2: is.vector()
# Use is.vector() to check if fruits is a vector.
is.vector(fruits)

# Problem 3: names()
# Create a numeric vector named prices with the values 10, 20, 15, 18.
# Then, use the names() function to label each value with the corresponding fruit in fruits.

prices <- c(10, 20, 15, 18)

names(prices) <- fruits
prices

# Problem 4: str()
# display the structure of the prices vector.
str(prices)

# Problem 5: Colon Operator
# Use the colon operator to create a vector named countdown that counts from 10 down to 1.

countdown <- 10:1
countdown

# Problem 6: sequence()
# generate the following vector: 1 2 1 2 3 1 2 3 4

sequence(c(2, 3, 4))
sequence(c(2:4))

# Problem 7: Vector Concatenation
# Combine the following two vectors into a single one using c():
  # first_half <- c("Monday", "Tuesday", "Wednesday")
  # second_half <- c("Thursday", "Friday", "Saturday", "Sunday")

first_half <- c("Monday", "Tuesday", "Wednesday")
second_half <- c("Thursday", "Friday", "Saturday", "Sunday")

weekdays <- c(first_half, second_half)
weekdays

# Problem 8: seq()
# Use seq() to generate a sequence starting from 5, ending at 50, increasing by 5.

by_fives <- seq(from = 5, to = 50, by = 5)
by_fives

# Problem 9: Descending Sequence
# Create a vector named down_by_threes that starts at 30 and decreases to 3, in steps of 3.

down_by_threes <- seq(from = 30, to = 3, by = -3)
down_by_threes

# Problem 10: Negative Numbers with seq()
# Create a vector named negatives using seq() that starts at -5 and ends at -50, decreasing by 5.

negatives <- seq(from = -5, to = -50, by = -5)
negatives

# Problem 11: rep() (times)
# Create a vector named repeat_7 that repeats the number 7, ten times, using rep().

repeat_7 <- rep(7, 10)
repeat_7

# Problem 12: rep(each)
# Create a vector named repeated_nums that contains the numbers 1 to 3, but each number is repeated 4 times before moving to the next number.

repeated_nums <- rep(1:3, each = 4)
repeated_nums

# Problem 13: rep(times)
# Create a vector named pattern_repeat that repeats the numbers 1 to 3, four times as a group.

pattern_repeat <- rep(1:3, times = 4)
pattern_repeat

# Problem 14: list()
# Create a list named person_info that contains the following three elements:
# A name "Luna", An age 22, A logical value TRUE (for is_student)

person_info <- list(name = "Luna", age = 22, is_student = TRUE)
person_info

# Problem 15: length()
# find how many elements are in the person_info list.

length(person_info)

# Problem 16: is.list()
# Check if person_info is a list using is.list().

is.list(person_info)

# Problem 17: matrix()
# Create a 3x2 matrix named scores_matrix using the numbers 1 to 6.

scores_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2) 
scores_matrix

# Problem 18: rbind()
# combine these two vectors as rows in a matrix:
  # x <- c(10, 20, 30)
  # y <- c(40, 50, 60)

x <- c(10, 20, 30)
y <- c(40, 50, 60)
row_mat <- rbind(x, y)
row_mat

# Problem 19: cbind()
# Now, combine the same vectors (x, y) as columns in a matrix named col_mat.

col_mat <- cbind(x, y)
col_mat

# Problem 20: rbind() + cbind()
# Step 1: Use cbind() to create a matrix named col_combo
# Step 2: Use rbind() to add another row: c(7, 8, 9)

a <- c(1, 2)
b <- c(3, 4)
c <- c(5, 6)

col_combo <- cbind(a, b, c)
col_combo

col_combo <- rbind(col_combo, c(7, 8, 9))
col_combo

# Problem 21: data.frame()
# Now, create a data frame named pets with:
  
  # name: "Max", "Bella", "Chloe"
  # type: "Dog", "Dog", "Cat"
  # age: 5, 3, 2

pets <- data.frame(name = c("Max", "Bella", "Chloe"),
                   type = c("Dog", "Dog", "Cat"),
                   age = c(5, 3, 2))
pets

# Problem 22: rm()
# Remove the object pattern_repeat from your environment using rm().

rm(pattern_repeat)

# Problem 23: Data Extraction — Rows Only
# Using your existing pets data frame,
# extract only the second row.

pets[2,]

# Problem 24: Data Extraction — Columns Only
# Extract only the name and age columns from the pets data frame.
pets[, c("name", "age")]
pets[, c(1, 3)]

# Problem 25: Data Extraction — Rows and Columns
# Extract the name and type of the 1st and 3rd pets only.

pets[c(1, 3), c("name", "type")]
pets[c(1, 3), c(1, 2)]

# Problem 26: Arrays
# Now let’s level up to arrays.

nums1 <- c(1, 2, 3, 4)
nums2 <- c(5, 6, 7, 8, 9, 10, 11, 12)

my_array <- array(c(nums1, nums2), dim= c(4, 2, 2))
my_array

# Problem 27: Array Extraction — 2nd row, 2nd layer
# Extract the entire 2nd row from the 2nd layer of my_array.

my_array[2,,2]

# Problem 28: Array Extraction — 1st row, all layers
# Extract the 1st row across all layers in my_array.

my_array[1,,]

# Problem 29: Array Extraction — Specific element
# Extract the value from: 3rd row, 1st column, 2nd layer

my_array[3, 1, 2]