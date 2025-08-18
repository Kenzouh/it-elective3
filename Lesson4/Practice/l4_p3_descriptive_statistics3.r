# Problem 1 (Measures of Central Tendency)
  # A teacher recorded the quiz scores of 10 students in her Math class: [5, 8, 10, 10, 12, 12, 15, 16, 18, 20]

scores <- c(5, 8, 10, 10, 12, 12, 15, 16, 18, 20) 
 
# Find the mean
mean(scores)

# Find the median
median(scores)

# Find the mode
x <- table(scores)
x
names(x)[which(x==max(x))]


# Problem 2 (Measure of Spread)
  # A company tracked the weekly working hours of 8 employees: [38, 40, 41, 39, 45, 50, 42, 36]

hours <- c(38, 40, 41, 39, 45, 50, 42, 36)

# Find the min
min(hours)

# Find the max
max(hours)

# Find the range
max(hours) - min(hours)

# Find the variance
var(hours)

# Find the standard deviation
sd(hours)


# Problem 3 (Percentiles & Quartiles)
  # A university collected the exam scores of 12 students: [55, 60, 65, 70, 72, 75, 78, 80, 82, 85, 90, 95]

university_scores <- c(55, 60, 65, 70, 72, 75, 78, 80, 82, 85, 90, 95)

# Find the 1st quartile (Q1)
q1 <- quantile(university_scores, c(0.25))
q1

# Find the 2nd quartile (Q2 / Median)
q2 <- quantile(university_scores, c(0.50))
q2

# Find the 3rd quartile (Q3)
q3 <- quantile(university_scores, c(0.75))
q3

# Find the IQR.

iqr_value <- q3 - q1
iqr_value

iqr_value_way2 <- IQR(university_scores)
iqr_value_way2

q1; q2; q3; iqr_value


# Problem 4(Column Min, Max, Range)
  # A school recorded the Math and Science exam scores of 6 students: math [78, 85, 92, 88, 76, 95], science [82, 79, 85, 91, 87, 90]

math <- c(78, 85, 92, 88, 76, 95)
science <- c(82, 79, 85, 91, 87, 90) 

# Store these into a data.frame.
student_scores <- data.frame(Math = math, Science = science)
student_scores

# Use colMins() and colMaxs() to find the minimum and maximum for each subject.

library(matrixStats)

colMins(as.matrix(student_scores))
colMaxs(as.matrix(student_scores))

# Compute the range (max − min) for each subject.
colMaxs(as.matrix(student_scores)) - colMins(as.matrix(student_scores))


# Problem 5 (Skewness, Kurtosis & Histogram)
  # A fitness coach measured the daily exercise times (in minutes) of 15 people in a training program:
  # [19.09, 19.55, 17.89, 17.73, 25.15, 27.27, 25.24, 21.05, 21.65, 20.92, 22.61, 15.71, 22.04, 22.60, 24.25]

minutes <- c(19.09, 19.55, 17.89, 17.73, 25.15, 27.27, 25.24, 21.05, 21.65, 20.92, 22.61, 15.71, 22.04, 22.60, 24.25)

# Compute the skewness and kurtosis of the data.
skew(minutes)
skewness(minutes)
kurtosis(minutes)

# Plot a histogram with ggplot2 (qplot()) and binwidth = 2.
library(ggplot2)

plot <- qplot(minutes, geom = 'histogram', binwidth = 2) + xlab('Exercise Time: (minutes)')
plot

# Interpret whether the distribution is skewed left/right and whether it is leptokurtic, mesokurtic, or platykurtic.
  # Positive skew (Right) [Leptokurtic]


# Problem 6 (Summary & Describe)
  #  A teacher collected the final grades of 8 students in her class: [75, 80, 82, 85, 87, 90, 92, 95]

final_grades <- c(75, 80, 82, 85, 87, 90, 92, 95)


#  Use summary() to get the min, Q1, median, mean, Q3, and max.
summary(final_grades)

# Use describe() (from the psych package) to get additional statistics (e.g., SD, skewness, kurtosis).
library(psych)
describe(final_grades)