# Problem 1 (Measures of Central Tendency)
  # A farmer recorded the number of mangoes harvested from 12 trees in his farm: [45, 50, 50, 52, 53, 55, 55, 55, 58, 60, 62, 65]

mangoes <- c(45, 50, 50, 52, 53, 55, 55, 55, 58, 60, 62, 65)
  
# Find the mean
mean(mangoes)

# Find the median
median(mangoes)

# Find the mode
x <- table(mangoes)
x
names(x)[which(x == max(x))]


# Problem 2 (Measure of Spread)
  # A call center tracked the daily call durations (in minutes) of 7 employees: [12, 15, 18, 20, 25, 30, 35]

call_time <- c(12, 15, 18, 20, 25, 30, 35)

# Find the minimum call duration.
min(call_time)

# Find the maximum call duration.
max(call_time)


# Problem 3 (Percentiles & Quartiles)
  # A professor recorded the project scores of 10 students: [40, 45, 50, 55, 60, 65, 70, 75, 80, 85]

proj_scores <- c(40, 45, 50, 55, 60, 65, 70, 75, 80, 85)
quantile(proj_scores)

# Find the 1st quartile (Q1)
Q1 <- quantile(proj_scores, c(0.25))
Q1

# Find the 2nd quartile (Q2 / Median)
Q2 <- quantile(proj_scores, c(0.50))
Q2

# Find the 3rd quartile (Q3)
Q3 <- quantile(proj_scores, c(0.75))
Q3

# Find the Interquartile Range (IQR)
IQR_value <- Q3 - Q1
IQR_value


# Problem 4 (Column Min, Max, Range)
  # A class recorded the scores of 5 students in English and History:
  # English → [72, 85, 90, 88, 76]
  # History → [80, 70, 75, 85, 90]

english <- c(72, 85, 90, 88, 76)
history <- c(80, 70, 75, 85, 90)

# Store these into a data.frame.
class_scores <- data.frame(english, history)
class_scores

# Find the minimum and maximum for each subject.
library(matrixStats)
colMins(as.matrix(class_scores))
colMaxs(as.matrix(class_scores))

# Compute the range for each subject.
class_scores_range <- colMaxs(as.matrix(class_scores)) - colMins(as.matrix(class_scores))
class_scores_range


# Problem 5 (Skewness, Kurtosis & Histogram)
  # A gym tracked the daily calories burned by 14 members during workouts: [210, 220, 230, 250, 260, 270, 280, 300, 310, 315, 320, 325, 330, 350]

burned_cal <- c(210, 220, 230, 250, 260, 270, 280, 300, 310, 315, 320, 325, 330, 350)

install.packages("psych")
library(psych)

skew(burned_cal) # psych pkg

# Compute the skewness and kurtosis of the data.
install.packages("moments")
library(moments)

skewness(burned_cal) # moments pkg
kurtosis(burned_cal) # moments pkg

# Plot a histogram using qplot() with binwidth = 20.
install.packages("ggplot2")
library(ggplot2)

plot <- qplot(burned_cal, geom = 'histogram', binwidth = 20) + xlab('Burned Calories During Workout')
plot


# Problem 6 (Summary & Describe)
  # A teacher recorded the midterm exam scores of 9 students: [68, 72, 75, 77, 80, 82, 85, 88, 90]

midterm_scores <- c(68, 72, 75, 77, 80, 82, 85, 88, 90)

# Get the min, Q1, median, mean, Q3, and max.
summary(midterm_scores)

# Get additional statistics (SD, skewness, kurtosis, etc.).
describe(midterm_scores) # psych pkg