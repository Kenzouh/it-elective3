# Problem 1 (Measures of Central Tendency)
  # A fruit vendor recorded the number of mangoes sold each day for 12 days: [12, 15, 14, 10, 18, 20, 22, 22, 19, 17, 16, 18]

mangoes_sold <- c(12, 15, 14, 10, 18, 20, 22, 22, 19, 17, 16, 18)

# Find the mean number of mangoes sold.
mean(mangoes_sold)

# Find the median.
median(mangoes_sold)

# Find the mode.
x <- table(mangoes_sold)
x
names(x)[which(x == max(x))]


# Problem 2 (Measure of Spread)
  # A factory measured the daily production (in tons) over 7 days: [120, 135, 128, 140, 150, 138, 132]

daily_production <- c(120, 135, 128, 140, 150, 138, 132)

# Find the minimum and maximum production.
min(daily_production)
max(daily_production)

# Compute the range.
max(daily_production) - min(daily_production)

# Find the variance.
var(daily_production)

# Find the standard deviation.
sd(daily_production)


# Problem 3 (Percentiles & Quartiles)
  # A group of students received the following exam scores: [45, 50, 55, 60, 62, 65, 70, 72, 75, 80, 85, 90, 95]

exam_scores <- c(45, 50, 55, 60, 62, 65, 70, 72, 75, 80, 85, 90, 95)

#  Find the 1st quartile (Q1).
q1 <- quantile(exam_scores, c(.25))
q1

# Find the 2nd quartile (Q2 / Median). = 70
q2 <- quantile(exam_scores, c(.50))
q2

# Find the 3rd quartile (Q3).
q3 <- quantile(exam_scores, c(.75))
q3

# Find the Interquartile Range (IQR) (two ways).
iqr_value <- q3 - q1
iqr_value

iqr_value_way_2 <- IQR(exam_scores)
iqr_value_way_2


# Problem 4 (Column Min, Max, Range)
  # A farmer measured the heights (cm) of two plant types across 5 samples:
    # Plant A: [120, 135, 128, 140, 125]
    # Plant B: [110, 115, 118, 122, 119]

plant_a <- c(120, 135, 128, 140, 125)
plant_b <- c(110, 115, 118, 122, 119)

# Store these into a data.frame.
plants <- data.frame(plant_a, plant_b)
plants

# Use colMins() and colMaxs() to find the minimum and maximum for each plant type.
install.packages("matrixStats")
library(matrixStats)

colMins(as.matrix(plants))
colMaxs(as.matrix(plants))

# Compute the range (max − min) for each plant type.
colMaxs(as.matrix(plants)) - colMins(as.matrix(plants))


# Problem 5 (Skewness, Kurtosis & Histogram)
  # A researcher recorded the reaction times (in seconds) of 12 participants in a psychology experiment:
    # [2.1, 2.5, 1.8, 2.3, 2.7, 3.0, 2.2, 1.9, 2.6, 2.8, 2.4, 3.1]

reaction_times <- c(2.1, 2.5, 1.8, 2.3, 2.7, 3.0, 2.2, 1.9, 2.6, 2.8, 2.4, 3.1)

# Compute the skewness and kurtosis of the data.
install.packages("psych")
install.packages("moments")
library(psych)
library(moments)

skew(reaction_times) # psych pkg
skewness(reaction_times) # moments pkg
kurtosis(reaction_times) # moments pkg

# Plot a histogram using qplot() from ggplot2 with binwidth = 0.2.
install.packages("ggplot2")
library(ggplot2)

plot <- qplot(reaction_times, geom = 'histogram', binwidth = 0.2) + xlab("Reaction Times")
plot

# Interpret whether the distribution is skewed left/right and whether it is leptokurtic, mesokurtic, or platykurtic.
  # Normal Distribution (mesokurtic).


# Problem 6 (Summary & Describe)
  # A professor recorded the final project scores of 9 students: [72, 75, 78, 80, 82, 85, 88, 90, 93]

final_project_scores <- c(72, 75, 78, 80, 82, 85, 88, 90, 93)

# Use summary() to get the min, Q1, median, mean, Q3, and max.
summary(final_project_scores)

# Use describe() (from the psych package) to get extra statistics (e.g., SD, skewness, kurtosis).
describe(final_project_scores) # psych pkg 