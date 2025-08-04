practice_data <- read.csv(file.choose(), header=T)

# Problem 1: head()
# Display the first 4 surnames from the dataset.

head(practice_data$Surname, 4)

# Problem 2: tail()
# Display the last 2 exam scores from the Final.Exam column of your dataset.

tail(practice_data$Final.Exam, 2)

# Problem 3: class()
# Check the class type of the practice_data dataset and also the class of a value like "R is fun".
class(practice_data)
class("R is fun")

typeof(practice_data) # determines the (R internal) type or storage mode of any object
typeof("R is fun")

# Problem 4: order()
# Sort the dataset in descending order by Absences, and show only the Surname and Absences columns.
practice_data[order(-practice_data$Absences), c("Surname", "Absences")]

# Problem 5: names()
# Show all the column names of practice_data.
names(practice_data)

# Problem 6: length()
length(practice_data)

# 6.1: Create a list that contains at least three elements (they can be numbers, strings, or even vectors).
first_names <- list("Kaito", "Hinata", "Aoi")
first_names

# 6.2: Use length() to display how many items are in the list.
length(first_names)

# 7. nrow() ncol()
# Display how many rows and columns are in your practice_data dataset using the appropriate functions.
nrow(practice_data)
ncol(practice_data)

# Problem 8: nchar()
# You are given the following vector of character strings: courses = Math, Data Science, R
courses <- c("Math", "Data Science", "R")
nchar(courses)

# Problem 9: String Concatenation with paste()
first <- "Data"
second <- "Analyst"

job_title <- paste(first, second)
job_title

# Problem 10: paste() with dataset columns
# Using your practice_data, combine each student’s First.Name and Surname into a new column called FullName.
practice_data$FullName <- paste(practice_data$First.Name, practice_data$Surname)
practice_data

head(practice_data)
head(practice_data[c("First.Name", "Surname", "FullName")], 5)

practice_data[c("First.Name", "Surname", "FullName")]

# Problem 11: sum()
# Using practice_data, compute the total number of absences from all students.

practice_data$TotalAbsences <- sum(practice_data$Absences)
practice_data

total_absences <- sum(practice_data$Absences, na.rm = TRUE)
total_absences

# Problem 12: is.na() and any()
# Check if there are any missing values in the HW.2 column of practice_data. If there are, return TRUE; otherwise, return FALSE.

any(is.na(practice_data$HW.2))
is.na(practice_data$HW.2)

practice_data$FullName <- paste(practice_data$First.Name, practice_data$Surname)
practice_data

# Problem 13: ifelse()
# You want to create a new column in practice_data called AttendanceStatus.

practice_data$AttendanceStatus <- ifelse(practice_data$Absences >= 5, "Irregular", "Regular")
practice_data
head(practice_data[c("Surname", "Absences", "AttendanceStatus")], 5)

# Problem 14: Creating your own data frame
# Now, create a small data frame named students with the following vectors:
# Name: c("Kai", "Mira", "Juno")      Grade: c(90, 85, 88)

name <- c("Kai", "Mira", "Juno")
grade <- c(90, 85, 88)

students <- data.frame(name, grade)

str(students)
students

# Problem 15: Add a new column
# Now, add a new column called Passed to your students data frame:
  # If the grade is greater than or equal to 88, set Passed to "Yes"
  # Otherwise, "No"

students$passed <- ifelse(students$grade >= 88, "Yes", "No")
students
str(students)

# Problem 16: Add a new row
# Now, add a new student to the students data frame:
  # Name: "Lina"   Grade: 92   Passed: "Yes"

new_student <- data.frame(name = c("Lina"), grade = c(92), passed = c("Yes"))
students <- rbind(students, new_student)
students

new_student <- data.frame(name = c("Clyde"), grade = c(99), passed = c("Yes"))
students <- rbind(new_student, students)
students

# Problem 17: Rename a column
# Now, rename the column grade to Score.

names(students)[names(students) == "grade"] <- "score"
students
str(students)

# Problem 18: To display only the students who passed — that is, passed == "Yes".

students_passed <- subset(students, students$passed == "Yes")
students_passed
str(students_passed)

# Probem 19: dplyr::select()
# Using the students data frame, show only the name and score columns 
# using the select() function from the dplyr package.

library(dplyr)
select(students, name, score)

# Problem 20:
  # Use select() with starts_with() to select any column that starts with "Exam".
  # Use select() with ends_with() to select the column that ends in "Status".
  # Use select() with contains() to select any column containing "Name".

names(students)[1] <- "StudentName"  # Rename for test
students
students_exams <- select(students, starts_with("sco"))
students_exams

students_status <- select(students, ends_with("sed"))
students_status

students_names <- select(students, contains("name"))
students_names

# Problem 21: mutate()

students = mutate(students, 
                  remarks= ifelse(score >= 90, "Excellent",
                           ifelse(score >= 85, "Good", "Needs Improvement"))
)

students

select(students, name, score, Remark)

# Problem 22: filter()
# Use filter() to display only the students with a remarks value of "Excellent".

filter(students, remarks == "Excellent")

students

sex <- c("M", "M", "F", "F", "F")
students <- cbind(students, sex)
students