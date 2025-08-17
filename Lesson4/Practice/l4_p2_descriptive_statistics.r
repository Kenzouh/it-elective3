# Problem 1: Find the mean, median, and mode of the quiz scores.
  # [15, 18, 20, 15, 22, 19, 20, 18, 21, 17]

quiz <- c(15, 18, 20, 15, 22, 19, 20, 18, 21, 17)

quiz

# Mean
mean(quiz)

# Median
median(quiz)

# Mode
x <- table(quiz)
x

names(x)[which(x == max(x))] # Way 1
names(table(quiz))[table(quiz) == max(table(quiz))] # Way 2


# Problem 2: The weights (kg) of 12 puppies in a shelter are: [2, 3, 4, 2, 5, 6, 2, 4, 5, 3, 7, 4]
  # Find the standard deviation.
  # Find the minimum, maximum, and range of the weights.

puppy_kg <- c(2, 3, 4, 2, 5, 6, 2, 4, 5, 3, 7, 4)
puppy_kg

# Standard Deviation
sd(puppy_kg)

# Minimum
min(puppy_kg)

# Maximum
max(puppy_kg)

# Range
max(puppy_kg) - min(puppy_kg)


# Problem 3: daily temperatures (°C) recorded in a town for one week are: [29, 30, 31, 30, 32, 33, 29]
  # Find the mean, median, and mode.
  # Then compute the standard deviation.

town_temp <- c(29, 30, 31, 30, 32, 33, 29) 

# Mean
mean(town_temp)

# Median
median(town_temp)

# Mode
x <- table(town_temp)
x

names(x)[which(x == max(x))]

# Standard Deviation
sd(town_temp)