# Problem 1: Vector Creation
  # Create a vector of your favorite fruits: "apple", "banana", "mango", "grape". Store it in an object called fruits.

fruits <- c("apple", "banana", "mango", "grape")


# Problem 2: Check if it is a vector
  # Instruction: Verify that fruits is indeed a vector.

is.vector(fruits)


# Problem 3: Check the type of the vector
  # Instruction: Determine the type of elements stored in fruits.

typeof(fruits)


# Problem 4: Check the length of the vector
  # Instruction: Find out how many elements are in the fruits vector.

length(fruits)


# Problem 5: Assign names to the vector elements
  # Instruction: Assign the names "first", "second", "third", "fourth" to each element of the fruits vector. Then display fruits.

names(fruits) <- c("first", "second", "third", "fourth")
fruits


# Problem 6: Check attributes of the vector
  # Instruction: Display all attributes of fruits.

attributes(fruits)


# Problem 7: Use str() to inspect the vector
  # Instruction: Display the structure of fruits using str().

str(fruits)


# Problem 8: Colon operator
  # Instruction: Create a numeric vector containing numbers from 5 to 15 using the colon operator.

5:15


# Problem 9: sequence() basic usage
  # Instruction: Generate a sequence with lengths 3, 5, and 2 using sequence().


sequence(c(3, 5, 2))


# Problem 10: sequence() with a single number
  # Instruction: Generate a sequence for the number 4 using sequence().

sequence(4)


# Problem 11: sequence() with a range
  # Instruction: Generate a sequence using sequence(1:4).

sequence(1:4)


# Problem 12: sequence() descending order
  # Instruction: Generate a descending sequence from 5 to 1 using seq().

seq(5, 1, -1)
seq(from = 5, to = 1, by = -1)


# Problem 13: sequence() with negative numbers
  # Instruction: Generate a sequence from -3 to -8 using seq().

seq(from = -3, to = -8, by = -1)


# Problem 14: rep() simple repetition
  # Instruction: Create a vector that repeats the number 7 exactly 6 times.

rep(7, 6)


# Problem 15: rep() with x= and times=
  # Instruction: Repeat the number 4 5 times using rep(x= , times= ) syntax.

rep(x = 4, times = 5)


# Problem 16: rep() with each=
  # Instruction: Repeat each element of the vector c(1, 2, 3) exactly 3 times.

rep(c(1, 2, 3), each = 3)


# Problem 17: List creation
  # Instruction: Create a list called song_info with these elements: "title" = "Imagine", "duration" = 183, "track" = 1. Then display it.

song_info = list(title = c("imagine"), duration = c(183), track = c(1))
song_info


# Problem 18: Check length and type of the list
  # Instruction: Find the length of song_info and check if it is a list.

length(song_info)


# Problem 19: Matrix creation
  # Instruction: Create a 2×3 matrix M with numbers 1 to 6, filled column-wise (default). Then display M.

M <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = F)
M


# Problem 20: Matrix with byrow = TRUE
  # Instruction: Create a 2×3 matrix with numbers 1 to 6, but this time filled row-wise. Display it.

M_row <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3, byrow = T) 
M_row

test_new_row <- c(7, 8, 9)
M_row <- rbind(M_row, test_new_row)  
M_row
rownames(M_row) <- NULL # Removes name.
M_row



# Problem 21: rbind() and cbind()
  # Instruction: Use rbind() to bind 1:3 and 4:6 as rows.
  # Use cbind() to bind 1:3 and 4:6 as columns.

rbind_result <- rbind(1:3, 4:6)
rbind_result

cbind_result <- cbind(1:3, 4:6)
cbind_result


# Problem 22: Check for NA values
  # v <- c(3, NA, 7, 2, NA) Check which elements are NA. 

v <- c(3, NA, 7, 2, NA)
v
is.na(v)


# Problem 23: Remove incomplete cases
  # Instruction: Remove NA values from v using complete.cases().

complete.cases(v)


# Problem 24: Create a data frame
  # Instruction: Create a data frame mydata with:
  # person = "Peter", "Lois", "Meg", "Chris", "Stewie"
  # age = 42, 40, 17, 14, 1
  # sex = "M", "F", "F", "M", "M"
  # Then display mydata.

mydata <- data.frame(person = c("Peter", "Lois", "Meg", "Chris", "Stewie"), 
                     age = c(42, 40, 17, 14, 1),
                     sex = c("M", "F", "F", "M", "M"))
mydata


# Problem 25: Remove an object
  # Instruction: Remove the object mydata from the environment.

rm(mydata)


# Problem 26: Data extraction – rows
  # Instruction: Create the mydata data frame again, then extract rows 2 to 4.

mydata <- data.frame(person = c("Peter", "Lois", "Meg", "Chris", "Stewie"), 
                     age = c(42, 40, 17, 14, 1),
                     sex = c("M", "F", "F", "M", "M"))

mydata[c(2:4), ]


# Problem 27: Data extraction – columns
  # Instruction: From the same mydata, extract the person and age columns. 

mydata[, c("person", "age")]


# Problem 28: Data extraction – mix of rows and columns
  # Instruction: From mydata, extract the age and sex of rows 1, 3, and 5.

mydata[c(1, 3, 5), c("age", "sex")]


# Problem 29: Arrays – basic creation
  # Create 2 vectors: array1 <- c(5, 10, 15, 20) array2 <- c(25, 30, 35, 40, 45, 50, 55, 60)
  # Combine them into a 3-dimensional array called final with dimensions 4 rows × 2 columns × 3 layers.
  # Display final.

array1 <- c(5, 10, 15, 20) 
array2 <- c(25, 30, 35, 40, 45, 50, 55, 60)
final <- array(c(array1, array2), dim=c(4, 2, 3))
final


# Problem 30: Extracting from arrays
  # Instruction: From final, extract the 2nd row of the 2nd layer.

final[2, , 2]


# Problem 31: Extracting a single element from an array
  # Instruction: From final, extract the element at 2nd row, 1st column, 3rd layer.

final[2, 1, 3]


# Problem 32: Extracting multiple layers
  # Instruction: From final, extract all rows and columns from the 1st layer.

final[, , 1]


# Problem 33: Extract multiple dimensions
  # Instruction: From final, extract all rows and columns from the 1st layer of the 2nd block (if final had 4 dimensions).

final[, , 1] # only 3D


# Problem 33: Extract a specific element in a 3D array
  # Instruction: From final, extract the element at 2nd row, 1st column, 3rd layer.
  # (This reinforces indexing in 3D arrays.)

final[2, 1, 3]


# Problem 34: Extract an entire row across all layers
  # Instruction: From final, extract the 2nd row across all layers.

final[2, ,]


# Problem 35: Extract an entire column across all  layers
  # Instruction: From final, extract the 1st column across all layers.

final[, 1, ]