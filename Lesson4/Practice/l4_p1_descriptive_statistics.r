# Problem 1: You have the following vector representing the number of goals scored by a soccer player in 12 matches:
  # goals <- c(2, 3, 1, 0, 4, 2, 5, 3, 2, 1, 0, 3)

goals <- c(2, 3, 1, 0, 4, 2, 5, 3, 2, 1, 0, 3)

# Find the mean
cat("Goals Mean:", mean(goals)) 

# Find the median
cat("Goals Median:", median(goals)) 

# Find the mode
x <- table(goals)
names(x)[which(x == max(x))]

mode <- names(table(goals))[table(goals) == max(table(goals))]
cat("Goals Mode:", mode)

# Problem 2: Two classes took the same test. Their scores (out of 50) are:
  # Class_X <- c(40, 42, 45, 43, 44, 46, 47, 41, 45, 44)
  # Class_Y <- c(10, 20, 30, 40, 50, 0, 45, 5, 35, 15)

Class_X <- c(40, 42, 45, 43, 44, 46, 47, 41, 45, 44)
Class_Y <- c(10, 20, 30, 40, 50, 0, 45, 5, 35, 15)

# Standard deviation
cat("Class X Standard Deviation:", sd(Class_X))
cat("Class Y Standard Deviation:", sd(Class_Y))

# Minimum score
cat("Class X Min:", min(Class_X))
cat("Class Y Min:", min(Class_Y))

# Maximum score
cat("Class X Max:", max(Class_X))
cat("Class Y Max:", max(Class_Y))

# Range

Class_X_Range <- max(Class_X) - min(Class_X)
Class_Y_Range <- max(Class_Y) - min(Class_Y)

cat("Class X Range:", Class_X_Range)
cat("Class Y Range:", Class_Y_Range)