# Problem 1: Vector Creation
# Create a vector named favorite_fruits 

favorite_fruits <- c("apple", "banana", "mango", "grape")
favorite_fruits


# Problem 2: is.vector()
# Check if the favorite_fruits object is a vector using the appropriate function.

is.vector(favorite_fruits)


# Problem 3: names()
# Create a numeric vector named fruit_prices with these prices:

fruit_prices <- c(100, 35, 50, 60)
names(fruit_prices) <- favorite_fruits
fruit_prices


# Problem 4: str()
# Use the str() function to inspect the structure of the fruit_prices object.

str(fruit_prices)


# Problem 5: seq
# Create a vector called odd_numbers that contains a sequence of odd numbers starting from 1 to 19 using the seq() function.

odd_numbers <- seq(from = 1, to = 19, by = 2)
odd_numbers


# Problem 6: Colon Operator :
# Now, using the colon operator, create a vector called days that contains the numbers from 1 to 7 (like days of the week).

days <- 1:7
days


# Problem 7: sequence()
# Use the sequence() function to generate a single vector that contains the values: 1 2 3 1 2 3 4

sequence(3:4)


# Problem 8: Vector Concatenation
# Using the c() function, combine these two vectors into one:
  # a <- c(10, 20, 30)
  # b <- c(40, 50)

a <- c(10, 20, 30)
b <- c(40, 50)

combined <- c(a, b)
combined


# Problem 9: seq() (empty form)
# Now try using seq() without any arguments (just seq()), and tell me what happens.

seq()


# Problem 10: seq(from, to, by)
# Create a vector named multiples_of_4 that contains all multiples of 4 from 4 to 40 using seq(from, to, by).

multiples_of_4 <- seq(from = 4, to = 40, by = 4)
multiples_of_4


# Problem 11: rep() – Times
# Use rep() to create a vector called repeat_5 that contains the number 5 repeated 6 times.
repeat_5 <- rep(5, 6)
repeat_5


# Problem 12: rep() – Times with named argument
# Now, recreate the same result but this time use the named arguments x and times.
  # Create a vector repeat_hello that repeats the string "hello" 3 times.

repeat_hello <- rep(x = "hello", 3)
repeat_hello


# Problem 13: rep() – Each
# Use rep() with the each argument to repeat each element of the vector c(1, 2, 3) 3 times, so the result is:
  # 1 1 1 2 2 2 3 3 3

rep(c(1, 2, 3), each = 3)


# Problem 14: list()
# Now let’s switch to lists.

student_info <- list(Name = "Ken", Age = 21, GPA = 3.75)
student_info


# Problem 15: length()
# Use the length() function to find out how many elements are in the student_info list.

length(student_info)


# Problem 16: is.list()
# Check if student_info is indeed a list using is.list().

is.list(student_info)


# Problem 17: Matrix Creation
# Create a 2x3 matrix named grades_matrix with the numbers 85, 90, 95, 88, 92, 96 filled by row.


grades_matrix <- matrix(c(85, 90, 95, 88, 92, 96), nrow = 2, ncol = 3, byrow = TRUE)
grades_matrix


# Problem 18: Matrix Subsetting
# Using your grades_matrix, extract the element in the 2nd row and 3rd column.
  # Assign it to a variable called selected_grade.

selected_grade <- grades_matrix[2,3]
selected_grade


# Problem 19: rbind()
# Use rbind() to combine these two vectors into a matrix:
  # math_scores <- c(90, 85, 88)
  # science_scores <- c(93, 89, 91)
# Assign them to "scores_matrix"

math_scores <- c(90, 85, 88)
science_scores <- c(93, 89, 91)

scores_matrix <- rbind(math_scores, science_scores)
scores_matrix


# Problem 20: cbind()
# Now use cbind() to combine the same two vectors as columns of a matrix.
  # Assign the result to scores_by_subject.

scores_by_subject <- cbind(math_scores, science_scores)
scores_by_subject


# Problem 21: Combine rbind() + cbind()
  # english <- c(88, 90)
  # japanese <- c(85, 87)
# Use cbind() to combine them into language_scores.
# Use rbind() to add a new row average <- c(86.5, 86.5) to language_scores.

english <- c(88, 90)
japanese <- c(85, 87)
average <- c(86.5, 86.5)

language_scores <- cbind(english, japanese)
language_scores
language_scores <- rbind(language_scores, average)
language_scores


# Problem 22: data.frame()
# Create a data frame named employees with the following columns:
  # name: "Alice", "Bob", "Charlie"
  # age: 30, 28, 35
  # department: "HR", "IT", "Finance"

employees <- data.frame(name = c("Alice", "Bob", "Charlie"),
                        age = c(30, 28, 35),
                        department = c("HR", "IT", "Finance")
)

employees


# Problem 23: rm()
# Use rm() to remove the language_scores object from your environment.

rm(language_scores)


# Problem 24: Data Extraction – Rows
# From the employees data frame, extract the 2nd row only.
# Assign it to a variable called second_employee.

second_employee <- employees[2,]
second_employee


# Problem 25: Data Extraction – Columns
# From the employees data frame, extract only the name column.
# Assign it to a variable named employee_names.

employee_names <- employees$name
employee_names

employee_names <- employees[["name"]]
employee_names

employee_names <- employees[, 1]


# Problem 26: Data Extraction – Multiple Columns
# From the employees data frame, extract only the name and age columns, and assign them to a new data frame called employee_basic_info.

employee_basic_info <- employees[, c("name", "age")]
employee_basic_info

employee_basic_info <- employees[, c(1, 2)]
employee_basic_info


# Problem 27: Arrays

week1 <- c(100, 200, 300, 400)
week2 <- c(500, 600, 700, 800)

sales_data <- array(c(week1, week2), c(2, 2,2 ))
sales_data


# Problem 28: Array Extraction
# From the sales_data array, extract the value at row 2, column 1, layer 2.
# Assign it to a variable named specific_sale.

specific_sale <- sales_data[2, 1, 2]
specific_sale