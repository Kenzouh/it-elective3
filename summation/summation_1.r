# Problem 1: Create vectors for the car dataset
  # company → names of the 10 companies
  # country → their countries
  # founded → founded years
  # employees → number of employees
  # revenue → 2022 revenue in billions
  # models → number of car models offered

company <- c("Toyota", "Ford", "Volkswagen", "Hyundai", "Tesla", "Honda", "BMW", "Nissan", "Mercedes-Benz", "General Motors")
country <- c("Japan", "USA", "Germany", "South Korea", "USA", "Japan", "Germany", "Japan", "Germany", "USA")
founded <- c(1937, 1903, 1937, 1967, 2003, 1946, 1916, 1933, 1926, 1908)
employees <- c(366283, 173000, 671205, 104731, 127855, 211373, 149475, 131461, 167921, 164000)
revenue <- c(275, 158, 295, 120, 81, 142, 132, 90, 150, 157)
models <- c(70, 45, 65, 40, 10, 35, 30, 28, 32, 50)


# Problem 2: Combine vectors into a data frame
  # Create a data frame named cars that contains all six vectors (company, country, founded, employees, revenue, models).

cars <- data.frame(company, country, founded, employees, revenue, models)
head(cars)


# Problem 3: Extract specific data
  # From your cars data frame, extract only the companies from Japan and display their company and revenue.

cars[cars$country == "Japan", c("company", "revenue")]


# Problem 4: Create a sequence
  # Create a sequence of years from 2000 to 2025 with a step of 5 years. Save it in a vector called years.

seq(from = 2000, to = 2025, by = 5)


# Problem 5
  # Create a matrix named car_stats using the revenue and models vectors, arranged in 10 rows and 2 columns.

car_stats <- matrix(c(revenue, models), nrow = 10, ncol = 2)
car_stats


# Problem 6
  # Give proper column names ("Revenue", "Models") and row names (the company names from your company vector) to the car_stats matrix. Then display it.

colnames(car_stats) <- c("Revenue", "Models")
rownames(car_stats) <- company
car_stats


# Problem 7
  # From car_stats, extract the Revenue of "Tesla".

car_stats["Tesla", "Revenue"]


# Problem 8
  # Create a list called car_info that contains the following elements:
    # The cars data frame
    # The car_stats matrix
    # The years vector

                # DF,  matrix   , vector
car_info <- list(cars, car_stats, founded)
car_info


# Problem 9
  # From your car_info list, extract the matrix (car_stats).

car_info[[2]]


# Problem 10
  # Add names to your car_info list ("data", "stats", "years") so that you can access elements like car_info$stats.

names(car_info) <- c("data", "stats", "years")
car_info
car_info$stats


# Problem 11
  # Create a vector named repeat_num that contains the number 8 repeated 10 times.

repeat_num <- rep(8, 10)
repeat_num


# Problem 12
  # Using the cars data frame, extract only the company names of car manufacturers that were founded before 1950.

cars_1950 <- cars[cars$founded <= 1950, "company"]
cars_1950