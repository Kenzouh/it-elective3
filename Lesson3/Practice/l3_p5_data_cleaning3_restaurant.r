restaurant_data <- read.csv(file.choose(), header=T)


# Problem 1: check the column names of this dataset after you read it from the CSV file.

names(restaurant_data)


# Problem 2: Use str() on restaurant_data to see:
  # The structure of your dataset
  # The data types (character, numeric, factor, etc.) for each column
  # How many observations and variables it has

str(restaurant_data)


# Problem 3: Show only the first 6 rows of restaurant_data.

head(restaurant_data)


# Problem 4: Show the last 5 rows of restaurant_data.

tail(restaurant_data, 5)


# Problem 5: Check the class of restaurant_data.

class(restaurant_data)


# Problem 6: Subset the dataset to show only the CustomerOrder and Revenue2025 columns.

restaurant_data[, c("CustomerOrder", "Revenue2025")]
subset(restaurant_data, select = c(CustomerOrder, Revenue2025))


# Problem 7: Find out how many rows are in restaurant_data.

nrow(restaurant_data)


# Problem 8: Find out how many columns are in restaurant_data.

ncol(restaurant_data)


# Problem 9: Calculate the total revenue in 2025 by summing the Revenue2025 column.
  # (Make sure it handles NA values correctly.

Revenue2025_Sum <- sum(restaurant_data$Revenue2025, na.rm=TRUE)
Revenue2025_Sum


# Problem 10: Add one new row to restaurant_data for a new customer order using rbind().

restaurant_data

add_customer <- data.frame(CustomerOrder = "Caviar",
                           ReceiptNumber = "R16",
                           PaymentType = "Credit Card",
                           Revenue2020 = 500000,
                           Revenue2021 = 650000,
                           Revenue2022 = 550000,
                           Revenue2023 = 700000,
                           Revenue2024 = 680000,
                           Revenue2025 = 800000,
                           AvgMealPrice = 4000,
                           Orders = 150,
                           StaffCount = 5,
                           CustomerRating = 5.0,
                           MarketingSpend = 5000000
)

restaurant_data <- rbind(restaurant_data, add_customer)
restaurant_data


# Problem 11: Add a new column called BranchLocation to restaurant_data using cbind(). 

restaurant_data <- na.omit(restaurant_data)
restaurant_data

BranchLocation <- data.frame(BranchLocation = c("Nagasaki", "Saitama", "Chiba", "Kyoto",
                                                "Himeji", "Sapporo", "Yamagata", "Hiroshima",
                                                "Toyonaka", "Kamakura","Kanazawa","Osaka", 
                                                "Tokyo")
)

restaurant_data <- cbind(restaurant_data, BranchLocation)
restaurant_data


# Problem 12: Remove the BranchLocation column completely using rm() or by subsetting.

rm(BranchLocation)

restaurant_data <- restaurant_data[, !(names(restaurant_data) == "BranchLocation")]
restaurant_data

restaurant_data$BranchLocation <- NULL
restaurant_data


# Problem 13: Check which values in restaurant_data are NA using is.na().

is.na(restaurant_data)


# Problem 14: Remove all rows that contain NA values from restaurant_data using na.omit().

restaurant_data <- na.omit(restaurant_data)
restaurant_data


# Problem 15: Using dplyr::mutate, create a new column called TotalRevenue that is the sum 
  # of Revenue2020 through Revenue2025 for each row.

library(dplyr)
restaurant_data <- dplyr::mutate(restaurant_data, 
                                 TotalRevenue = rowSums(
                                   select(restaurant_data, Revenue2020:Revenue2025),
                                   na.rm = TRUE
                                   )
)

restaurant_data


# Problem 16: Using dplyr::filter, show only the rows where TotalRevenue is greater than 1,200,000.

filter(restaurant_data, TotalRevenue > 1200000)


# Problem 17: Find the mean of AvgMealPrice.

mean_AvgMeal <- mean(restaurant_data$AvgMealPrice)
mean_AvgMeal


# Problem 18: Find the median of Orders.

median_Orders <- median(restaurant_data$Orders)
median_Orders


# Problem 19: Find the mode of CustomerRating

# uses table() to count frequencies, then extracts the name(s) with the maximum count.
mode_CustomerRating <- table(restaurant_data$CustomerRating)
names(mode_CustomerRating)[which(mode_CustomerRating == max(mode_CustomerRating))] 


# Problem 20: Find the standard deviation of Revenue2024.

sd_Revenue2024 <- sd(restaurant_data$Revenue2024)
sd_Revenue2024


# Problem 21: Find the minimum value of Revenue2023.

min_Revenue2023 <- min(restaurant_data$Revenue2023)
min_Revenue2023


# Problem 22: Find the maximum value of Revenue2023.

max_Revenue2023 <- max(restaurant_data$Revenue2023)
max_Revenue2023


# Problem 23: Find the range (max − min) of Revenue2020.

range_Revenue2020 <- max(restaurant_data$Revenue2020) - min(restaurant_data$Revenue2020)
range_Revenue2020