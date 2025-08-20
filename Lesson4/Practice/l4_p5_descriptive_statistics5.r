# Problem 1 (Measures of Central Tendency)
  # A bookstore recorded the number of books sold per day for 9 days: [12, 15, 15, 18, 20, 22, 22, 25, 30]

daily_sales <- c(12, 15, 15, 18, 20, 22, 22, 25, 30)
daily_sales

# Find the mean.
mean(daily_sales)

# Find the median.
median(daily_sales)

# Find the mode.
x <- table(daily_sales)
x
names(x)[which(x == max(x))]


# Problem 2 (Measure of Spread)
  # A café tracked the number of customers for 7 days: [34, 28, 40, 35, 30, 38, 32]

daily_customers <- c(34, 28, 40, 35, 30, 38, 32)

# Find the minimum and maximum customers.
min(daily_customers)
max(daily_customers)

# Compute the range.
max(daily_customers) - min(daily_customers)

# Compute the variance and standard deviation.
var(daily_customers)
sd(daily_customers)


# Problem 3 (Percentiles & Quartiles): 
  # A company collected the monthly sales (in thousands) of 10 products: [15, 18, 20, 22, 25, 28, 30, 32, 35, 40]

monthly_sales <- c(15, 18, 20, 22, 25, 28, 30, 32, 35, 40)

# Find the 1st quartile (Q1).
Q1 <- quantile(monthly_sales, c(0.25))
Q1

# Find the 2nd quartile (Q2 / median).
Q2 <- quantile(monthly_sales, c(0.5))
Q2

# Find the 3rd quartile (Q3).
Q3 <- quantile(monthly_sales, c(0.75))
Q3

# Compute the IQR (interquartile range).
IQR_value <- as.numeric(Q3 - Q1) # Way 1
IQR(monthly_sales) # Way 2
IQR_value


# Problem 4 (Column Min, Max, Range)
  # English: [88, 92, 75, 85, 90]
  # History: [80, 85, 78, 88, 84]

install.packages("matrixStats")
library(matrixStats)

english <- c(88, 92, 75, 85, 90)
history <- c(80, 85, 78, 88, 84)

# Store these into a data.frame. Use colMins() and colMaxs() to find the minimum and maximum for each subject.
exam_scores <- data.frame(english, history)
exam_scores

colMins(as.matrix(exam_scores))
colMaxs(as.matrix(exam_scores))

# Compute the range (max − min) for each subject. 
colMaxs(as.matrix(exam_scores)) - colMins(as.matrix(exam_scores))


# Problem 5 (Skewness, Kurtosis & Histogram)
  # A fitness center measured the weekly running distances (in km) of 12 members: [3.5, 4.2, 3.8, 5.0, 4.5, 4.8, 6.2, 3.9, 4.1, 5.5, 6.0, 4.7]

install.packages("psych")
install.packages("moments")
library(psych)
library(moments)

weekly_run <- c(3.5, 4.2, 3.8, 5.0, 4.5, 4.8, 6.2, 3.9, 4.1, 5.5, 6.0, 4.7)

# Compute skewness and kurtosis.
skew(weekly_run) # psych pkg
skewness(weekly_run) # moments pkg
kurtosis(weekly_run) # moments pkg

# Plot a histogram using qplot() with binwidth = 0.5.
install.packages("ggplot2")
library(ggplot2)

plot <- qplot(weekly_run, geom = 'histogram', binwidth = 0.5) + xlab('Weekly Running Distances (KM)')
plot

# Interpret whether the distribution is skewed left/right and whether it is leptokurtic, mesokurtic, or platykurtic.
  # Positive Skew (Right) Leptokurtic


# Problem 6 (Summary & Describe)
  # A teacher recorded the weekly quiz grades of 9 students: [78, 82, 85, 88, 90, 92, 95, 97, 100]

quiz_grades <- c(78, 82, 85, 88, 90, 92, 95, 97, 100)

# Use summary() to get min, Q1, median, mean, Q3, max.
summary(quiz_grades) # psych pkg

# Use describe() to get SD, skewness, kurtosis, and other statistics.
describe(quiz_grades) # psych pkg