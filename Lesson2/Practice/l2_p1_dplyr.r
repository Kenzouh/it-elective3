data <- read.csv(file.choose(), header=T)

# 1. Show only the first 5 rows of college.csv.
head(data, 5)

# 2. Display the last 3 rows of only the columns "Surname", "Absences", and "Final Exam".

tail(data[, c("Surname", "Absences", "Final.Exam")], 3)

tail(data[2:8, c("Surname", "Absences", "Final.Exam")], 3)

# 3. Get all rows where the student has 0 absences.

library(dplyr)
filter(data, Absences == 0)
subset(data, Absences == 0)

# 4. Get the first and third row of only the "Sex" and "Section" columns.

data[c(1, 3), c("Sex", "Section")]

# 5. Filter all male students (Sex == "M") who belong to Section B.

filter(data, Sex == "M" & Section == "B")

data[data$Sex == "M" & data$Section == "B",]

# 6. Get students who have more than 5 absences and got a Final Exam grade of 85 or above.

data[data$Absences >= 5 & data$Final.Exam >= 85, ]
filter(data, Absences >= 5 & Final.Exam >= 85)

# 7. Show all rows where the Exam 2 score is exactly 91.

filter(data, Exam.2 == 91)
data[data$Exam.2 == 91, ]

# 8. Show the entire data, sorted by Absences in descending order.

data[order(-data$Absences), ]

# 9. Show only the top 3 students who got the highest Final Exam scores.

head(data[order(-data$Final.Exam), ], 3)

# 10. How many missing values are there in the column HW 2?

sum(is.na(data$HW.2))

# 11. Remove all rows that contain any missing values from the dataset.
clean_data <- na.omit(data)
View(clean_data)
View(data)

any(is.na(clean_data)) # Checks if there are nulls.

# 12. Add a new column called HW_Average that stores the average of HW 1, HW 2, and HW 3 for each student.

data <- mutate(data, HW_Average = rowMeans(cbind(HW.1, HW.2, HW.3), na.rm = TRUE))

# 13. Add a new column called FullName that combines "First Name" and "Surname"

data <- mutate(data, FullName = paste(First.Name, Surname))
data