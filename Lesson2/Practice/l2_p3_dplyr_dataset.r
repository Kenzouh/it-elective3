data <- read.csv(file.choose(), header=TRUE)


# PROBLEM 1: head()
# Load the data1 dataset from a CSV file and display the first 5 rows using the head() function.

head(data, 5)


# PROBLEM 2: tail()
# Using the same dataset, display the last 4 rows of data1 using the tail() function.

tail(data, 4)


# PROBLEM 3: class()
# Check the class of the object data1 using the appropriate function.

class(data)


# PROBLEM 4: order()
# Using the dataset data, display the rows sorted in ascending order based on the column Absences.

data[order(data$Absences), ]


# PROBLEM 5: names()
# Display the names of the columns in the data data frame.

names(data)


# PROBLEM 6: Determine the size of each element of a character vector
# Create a character vector str <- "Midterm Exam" and use an appropriate function to count the number of characters (including spaces).

str <-c("Midterm Exam")
nchar(str)


#  PROBLEM 7: nrow() and ncol()
# display: The number of rows and the number of columns

nrow(data)
ncol(data)


# PROBLEM 8: String concatenation
# Create two character variables:

str1 <- "Good"
str2 <- "Morning"

str3 <- paste(str1, str2)
str3


# PROBLEM 9: sum()
# Given a numeric vector scores <- c(10, 20, NA, 30, 40), calculate the sum ignoring the NA values.

scores <- c(10, 20, NA, 30, 40)
sum(scores, na.rm = TRUE)


# PROBLEM 10: sum() of a dataset column
# Calculate the total sum of the column Absences in the dataset data1. Assume the column exists and has numeric values. Use sum() and handle missing values if any.

Total.Absences <- sum(data$Absences, na.rm = TRUE)
Total.Absences


# PROBLEM 11: is.na() - Dealing with Missing Values
# Using the vector v <- c(3, NA, 5, NA, 9), identify which elements are missing (NA) using the appropriate function. Then, count how many NAs are in the vector.

v <- c(3, NA, 5, NA, 9)
is.na(v)

v_cleaned <- na.omit(v)
v_cleaned


# PROBLEM 12: ifelse()
# Create a numeric variable score <- 75.
# Using ifelse(), return "Passed" if the score is 70 or above, otherwise return "Failed".

score <- 75

grade <- ifelse(score >= 70, "passed",
         ifelse(score < 70, "failed"
         ))
grade


# PROBLEM 13: Data Frames - Creating and Subsetting
# Create a data frame named StudentData with these columns:
  # Name: "Alice", "Bob", "Charlie"
  # Age: 20, 22, 23
  # Grade: 85, 90, 88

StudentData <- data.frame(Name = c("Alice", "Bob", "Charlie"),
                          Age = c(20, 22, 23),
                          Grade = c(85, 90, 88)
                          )
StudentData

StudentData[2, ]


# PROBLEM 14: Adding a new column
# Add a new column called Passed to StudentData that stores "Yes" if the Grade is 80 or above, otherwise "No". Use vectorized operations or ifelse().

StudentData$Passed <- ifelse(StudentData$Grade >= 80, "Yes", "No")
StudentData


# PROBLEM 15: Adding new rows

new_students <- data.frame(
  Name = c("David", "Emma"),
  Age = c(21, 22),
  Grade = c(75, 92),
  Passed = c("No", "Yes")
)

StudentData <- rbind(StudentData, new_students)
StudentData


# PROBLEM 16: Renaming a column
# In StudentData, rename the column Grade to FinalGrade.
# You may use base R or dplyr::rename().

library(dplyr)

StudentData <- dplyr::rename(StudentData, FinalGrade = Grade)
StudentData

names(StudentData)[names(StudentData) == "Grade" ] <- "FinalGrade"
StudentData


# PROBLEM 17: subset()
# Use subset() to extract only the students who passed (Passed == "Yes") from StudentData.

subset(StudentData, Passed == "Yes")


#  PROBLEM 18: dplyr select()
# Use dplyr::select() to display only the Name and FinalGrade columns from StudentData.

dplyr::select(StudentData, c("Name", "FinalGrade"))


# PROBLEM 19: dplyr mutate()
# Using mutate(), add a new column called Remarks to StudentData that says:

StudentData <- mutate(StudentData, Remarks == ifelse(FinalGrade >= 90, "Excellent",
                                              ifelse(FinalGrade >= 80, "Good", "Needs improvement"))
)
StudentData


# PROBLEM 20: dplyr filter()
# Use dplyr::filter() to get all students who:
  # Passed, and Have a FinalGrade greater than or equal to 85

dplyr::filter(StudentData, Passed == "Yes", FinalGrade >= 85)