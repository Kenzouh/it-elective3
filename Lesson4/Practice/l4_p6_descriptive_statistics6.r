# Problem 1 (Measures of Central Tendency)
  # A nutritionist recorded the daily calorie intake of 10 clients in a health program: [1800, 2200, 2000, 1900, 2100, 2000, 2300, 2500, 1950, 2050]

daily_cal <- c(1800, 2200, 2000, 1900, 2100, 2000, 2300, 2500, 1950, 2050)

# Find the mean calorie intake.
mean(daily_cal)

# Find the median calorie intake.
median(daily_cal)

# Find the mode calorie intake.
x <- table(daily_cal)
x
names(x)[which(x == max(x))]


# Problem 2 (Measure of Spread)
  # A small startup recorded the monthly salaries (in dollars) of 7 employees: [3200, 3500, 3000, 4000, 3600, 3100, 3700]

monthly_salaries <- c(3200, 3500, 3000, 4000, 3600, 3100, 3700)

# Find the minimum and maximum salary.
min(monthly_salaries)
max(monthly_salaries)

# Find the range of salaries.
max(monthly_salaries) - min(monthly_salaries)

# Find the variance and standard deviation.
var(monthly_salaries)
sd(monthly_salaries)


# Problem 3 (Percentiles & Quartiles)
   #  A bookstore tracked the number of books sold by 12 staff members in a month: [12, 15, 18, 20, 22, 25, 28, 30, 32, 35, 38, 40]

books_sold <- c(12, 15, 18, 20, 22, 25, 28, 30, 32, 35, 38, 40)

# Find the 1st quartile (Q1).
Q1 <- quantile(books_sold, c(0.25))
Q1

# Find the 2nd quartile (Median / Q2).
Q2 <- quantile(books_sold, c(0.5)) 
Q2

# Find the 3rd quartile (Q3).
Q3 <- quantile(books_sold, c(0.75))
Q3

# Find the interquartile range (IQR).
IQR_value <- as.numeric(Q3) - as.numeric(Q1)
IQR_value


# Problem 4 (Column Min, Max, Range)
  # A school recorded the scores of 5 students in English: [88, 92, 85, 90, 95] and History: [78, 80, 85, 82, 79]

english <- c(88, 92, 85, 90, 95) 
history <- c(78, 80, 85, 82, 79)

# Store the data into a data.frame.
scores <- data.frame(english, history)

# Use colMins() and colMaxs() to find the minimum and maximum for each subject.
install.packages("matrixStats")
library(matrixStats)

colMins(as.matrix(scores))
colMaxs(as.matrix(scores))

# Compute the range for each subject.
colMaxs(as.matrix(scores)) - colMins(as.matrix(scores))


# Problem 5 (Skewness, Kurtosis & Histogram)
  # A research group measured the hours of sleep of 14 adults during a work week:
  # [5.5, 6.0, 6.2, 6.8, 7.0, 7.1, 7.3, 7.5, 7.8, 8.0, 8.1, 8.5, 9.0, 9.2]

adult_sleep <- c(5.5, 6.0, 6.2, 6.8, 7.0, 7.1, 7.3, 7.5, 7.8, 8.0, 8.1, 8.5, 9.0, 9.2)

# Compute the skewness and kurtosis of the data.
install.packages("psych")
install.packages("moments")
library(psych)
library(moments)

skew(adult_sleep) # psych pkg
skewness(adult_sleep) # moments pkg
kurtosis(adult_sleep) # moments pkg

# Plot a histogram with qplot() using binwidth = 0.5.
install.packages("ggplot2")
library(ggplot2)

plot <- qplot(adult_sleep, geom = 'histogram', binwidth = 0.5) + xlab('Adult sleeping time')
plot

# Interpret whether the distribution is skewed left/right and whether it is leptokurtic, mesokurtic, or platykurtic.
  # Negative Skew (Left) [Platykurtic]


# Problem 6 (Summary & Describe)
  # A professor collected the project scores of 9 students: [72, 75, 78, 80, 82, 85, 87, 90, 95]

proj_scores <- c(72, 75, 78, 80, 82, 85, 87, 90, 95)

# Use summary() to find min, Q1, median, mean, Q3, max.
summary(proj_scores)

# Use describe() from psych to get additional stats (SD, skewness, kurtosis, etc.).
describe(proj_scores) # psych pkg