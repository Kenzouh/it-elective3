# Problem 1: Create a vector containing the names of the first five planets of the solar system (in order from the Sun). 
  # Store it in an object called planets.

planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter")


# Problem 2: Check if planets is a vector using is.vector().

is.vector(planets)


# Problem 3: Check the type of planets using typeof().

typeof(planets)


# Problem 4: Find out how many elements are in planets

length(planets)


# Problem 5: Check the attributes of planets

attributes(planets)


# Problem 6: Assign names to each element of planets representing their order from the Sun 
  # (e.g., first, second, …). Then display the vector.

planet_order <- c("first", "second", "third", "fourth", "fifth")


names(planets) <- planet_order
planets


# Problem 7: Display the structure of planets

str(planets)


# Problem 8: Create a sequence of numbers starting from 5 and ending at 15 using seq

seq(from = 5, to = 15)
 

# Problem 9: Create a numeric vector from 10 to 25 using the colon operator.

10:15


# Problem 10: Generate a sequence from 1 up to 6 using sequence

sequence(6)


# Problem 11: Create a sequence that first goes from 1 to 4, then from 1 to 6, using sequence(c())

sequence(c(4, 6))


# Problem 12: Generate sequences from 1 to each number in 1:4 using sequence(1:4).

sequence(1:4)


# Problem 13: Sequence in descending order
  # Create a sequence from 10 down to 1 using sequence().

sequence(rev(1:10)) # Note about sequence() = it doesn't accept negative numbers unlike seq()


# Problem 14: Generate a sequence from -3 to 3 .

seq(from = -3, to = 3)


# Problem 15: Combine the vector (1, 2, 3) with the vector (10, 20, 30) into a single vector.

vector1 <- c(1, 2, 3)
vector2 <- c(10, 20, 30)

# For concatenating strings
# vector3 <- paste(vector1, vector2)
vector3 <- c(vector1, vector2)
vector3


# Problem 16: Create a sequence from 1 to 10 using seq() with no extra arguments.

seq(1, 10)


# Problem 17: Create a sequence from 20 to 30 using seq(from, to).

seq(from = 20, to = 30)


# Problem 18: Create a sequence from 0 to 100 counting by 10s.

seq(from = 0, to = 100, by = 10)


# Problem 19: Create a sequence from 50 down to 0 counting by 5s.

seq(from = 50, to = 0, by = -5)


# Problem 20: Create a sequence from -10 to -50 counting by -10s.

seq(from = -10, to = -50, by = -10)


# Problem 21: Create a vector that repeats the number 7 exactly 12 times.

rep(7, 12)


# Problem 22: Repeat the number 3 exactly 5 times.

rep(3, 5)


# Problem 23: Repeat the number 9 exactly 4 times using the x = parameter.

rep(x = 9, times = 4)


# Problem 24: Repeat the vector (1, 2, 3) exactly 3 times in the same order.

rep(c(1, 2, 3), times = 3)


# Problem 25: Repeat each element of the vector (8, 9, 10) 2 times before moving to the next.

rep(c(8, 9, 10), each = 2)


# Problem 26: Create a list using:
  # Your name (character)
  # Your age (numeric)
  # A logical value indicating whether you like R (TRUE/FALSE).


list(name = "Chiaki", age = 18, likes_r = TRUE)


# Problem 27: COERCION! Create a vector combining the values:
  # "R is fun" (character), 
  # 42 (numeric),
  # TRUE (logical) in a single c() call. Then check the result.


r_lang <- c("R is fun", 42, TRUE)
r_lang


# Problem 28: Find the length of your r_lang vector.

length(r_lang)


# Problem 29: Check if r_lang is a list.

is.list(r_lang)


# Problem 30: Create a 3×3 matrix with the numbers 1 to 9, filling it column-wise (default).

matrix(c(1:9), nrow = 3, ncol = 3)


# Problem 31: Create the same 3×3 matrix with numbers 1 to 9, but fill it row-wise.

matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE)


# Problem 32: Bind the vectors (1, 2, 3) and (4, 5, 6) as rows of a matrix.

rbind(c(1, 2, 3), c(4, 5, 6))


# Problem 33: Bind the vectors (1, 2, 3) and (4, 5, 6) as columns of a matrix.

cbind(c(1, 2, 3), c(4, 5, 6))


# Problem 34: First, bind (1, 2, 3) and (4, 5, 6) as rows, then bind the result with (7, 8, 9) as a new column.

matrix1 <- rbind(c(1, 2, 3), c(4, 5, 6))
matrix1
matrix1 <- cbind(matrix1, c(7, 8))
matrix1


# Problem 35: Create a vector with some numbers and an NA value, then check which elements are NA.

vector_na <- c(25, 5, NA, 30, NA, 2, 4, NA, NA, 8)

is.na(vector_na)


# Problem 36: Using the same vector_na, check which elements are complete cases (not NA).

complete.cases(vector_na)


# Problem 37: Data frame with:
  # name: "name", "name", "name"
  # age: 25, 30, 22
  # gender: "F", "M", "M"

visitors <- data.frame(name = c("Shizuka", "Riku", "Kaito"),
           age = c(25, 30, 22),
           gender = c("F", "M", "M")
)

# Problem 38: Remove the object vector_na from your environment.

rm(vector_na)


# Problem 39: From the data frame you created, extract only the 2nd row.

visitors[2, ]


# Problem 40: From visitors, extract only the name column.

visitors[, c("name")]


# Problem 41: From visitors, extract the age of "Kaito".

visitors[3,2]


# Problem 42: Create an array with the numbers 1 to 12, arranged in 3 rows, 2 columns, and 2 layers.

array(c(1:12), dim = c(3, 2, 2))


# Problem 43: Create an array with the numbers c(10, 20, 30, 40, 50, 60) 
  # arranged in 2 rows, 3 columns, and 2 layers.

array1 <- array(c(10, 20, 30, 40, 50, 60), dim = c(2, 3, 2))
array1


# Problem 44: From your last array, extract the 1st row of the 2nd layer.

array1[1, , 2]


# Problem 45: Extract the element in the 2nd row, 3rd column of the 1st layer.

array1[2, 3, 1]


# Problem 46: From array1, extract the value 40 by specifying its row, column, and layer.

array1[2, 2, 2]


# Problem 47: From array1, extract all elements in the 2nd column across both layers.

array1[, 2, ]


# Problem 48: From array1, extract the entire 1st layer.

array1[, , 1] 


# Problem 49: From array1, extract the 2nd row across all columns and layers.

array1[2, , ]


# Problem 50: From array1, extract the first column of the 2nd layer only.

array1[, 1, 2]


# Problem 51: From array1, extract all elements except those in the 1st row of the 1st layer.

array1[-1, ,1]


# Problem 52: From array1, extract the last element of the last layer.

array1[2, 3, 2]


# Problem 53: From array1, extract all elements except those in the 3rd column of both layers.

array1[, c(1, 2), ]


# Problem 54: From array1, extract the diagonal elements of the 2nd layer (i.e., elements where row = column).

array1[1, 1, 2]
array1[2, 2, 2]


array1[cbind(c(1, 2), c(1, 2), c(2, 2))]


# Problem 55: From array1, extract all elements in the 1st row and 1st column across both layers.

array1[1, 1, ]


# Problem 56: From array1, extract all elements except the 2nd layer.

array1[, , 1]


# Problem 57: From array1, extract all elements in the 2nd row and 3rd column across both layers.

array1[2, 3, ]


# Problem 58: From array1, extract all elements in the 1st row across all columns, but only from the 2nd layer.

array1[1, , 2]


# Problem 59: From array1, extract the middle element of the first layer (i.e., row 2, column 2, layer 1).

array1[2, 2, 1]


# Problem 60: From array1, extract all elements except the 1st row across both layers.

array1[2, , ]