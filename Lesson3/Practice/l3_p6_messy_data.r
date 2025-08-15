# Problem 1: Import your CSV dataset and store it in a variable called Rev.
  # After importing, check the first 6 rows of your dataset using an appropriate function.

rev <- read.csv(file.choose(), header = T)

head(rev)

# Problem 2: Create a new column called industry_code that contains the first 2 letters of the SEC_Registration.No. column.
  # Then, display the first 6 rows to see the new column.

library(dplyr)
rev <- mutate(rev, industry_code = substr(SEC_Registration.No., 1, 2))
rev
head(rev$industry_code)

# Problem 3: Create another column called business_number that contains the last 4 digits of the SEC_Registration.No..
  # Display the first 6 values of this new column to check.

rev <- mutate(rev, business_number = substr(SEC_Registration.No., 8, 11))
rev

head(rev$business_number)

# Problem 4: Create a new column called sec_middle that extracts characters from the 2nd to the 7th position of SEC_Registration.No..
  # Display the first 6 values to check your result.

rev <- mutate(rev, sec_middle = substr(SEC_Registration.No., 2, 7))
rev
head(rev$sec_middle)

# Problem 5: Find the starting position of the substring "000" in each SEC_Registration.No. and store it in a new column called placement_000.
  # Display the first 6 values of placement_000 to check.

rev <- mutate(rev, placement_000 = gregexpr("000", SEC_Registration.No.))
rev

head(rev$placement_000)

# Problem 6: Create a new column called match_at_3 that contains the Company_Name only if the 
  # "000" substring starts at position 3.
  # Otherwise, leave it as "-".
  # Display the first 6 values to check.

rev <- mutate(rev, match_at_3 = ifelse(placement_000 == 3, Company_Name, "-"))
rev

head(rev$match_at_3)

# Problem 7: Create a new column called industry_and_number that combines industry_code and business_number into a single string, separated by a space.
# Display the first 6 values to check.

library(glue)

rev <- mutate(rev, industry_and_number = glue("{industry_code} {business_number}"))
rev

rev <- mutate(rev, industry_and_number = paste(industry_code, business_number))
rev


# Problem 8: Calculate the total gross revenue for each company by summing the FY columns from FY.2015 to FY.2019.
  # Store the result in a new column called total_gross_revenue.
  # Make sure to convert the FY columns to numeric first if they aren’t already, and ignore missing values.
  # Display the first 6 values of total_gross_revenue.

rev$FY.2015.1 = as.numeric(rev$FY.2015.1)
rev$FY.2016.1 = as.numeric(rev$FY.2016.1)
rev$FY.2017.1 = as.numeric(rev$FY.2017.1) 
rev$FY.2018.1 = as.numeric(rev$FY.2018.1)
rev$FY.2019.1 = as.numeric(rev$FY.2019.1)

rev$FY.2015.1[is.na(rev$FY.2015.1)] <- 0
rev$FY.2016.1[is.na(rev$FY.2016.1)] <- 0
rev$FY.2017.1[is.na(rev$FY.2017.1)] <- 0
rev$FY.2018.1[is.na(rev$FY.2018.1)] <- 0
rev$FY.2019.1[is.na(rev$FY.2019.1)] <- 0

rev <- mutate(rev, total_gross_revenue = rowSums(rev[, c("FY.2015.1", "FY.2016.1", "FY.2017.1",
                                                         "FY.2018.1", "FY.2019.1")])
)

head(rev$total_gross_revenue)

# Problem 9: Create a vector called all_companies that contains only the company names 
  # whose total_gross_revenue is greater than 500. Display this vector.

rev <- mutate(rev, all_companies = ifelse(total_gross_revenue > 500, Company_Name, NA))
rev
head(rev$all_companies)

# Problem 10: Create a new vector called high_revenue_companies by removing all NAs
  # from all_companies using na.omit(). Display the result.

high_revenue_companies <- na.omit(rev$all_companies)
high_revenue_companies
rev$all_companies

# Problem 11: Using the SEC_Registration.No. column, replace the first occurrence of "000" with "XXX" for each company.
  # Store the result in a new column called SEC_modified.
  # Display the first 6 rows of SEC_modified.

rev

rev <- mutate(rev, SEC_modified = sub("000", "XXX", SEC_Registration.No.))
head(rev$SEC_modified)

# Problem 12: Now, replace all occurrences of "0" with "Z" in SEC_Registration.No. 
  # and store it in a new column called SEC_all_modified.
  # Display the first 6 rows.

rev <- mutate(rev, SEC_all_modified = gsub("0", "Z", SEC_Registration.No.))
rev

head(rev)

# Problem 13: Create a vector called fy_columns that contains the names of all FY columns 
  # for 2015–2019 (both numeric and original columns, if you like).

fy_columns <- c("FY.2015", "FY.2016", "FY.2017", "FY.2018", "FY.2019",
                "FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1", "FY.2019.1")

fy_columns

# Problem 14: Using the industry_code column, find which row number corresponds to "PE".
  # Store the result in a variable called pe_rows and display it.


first_pe <- match("PE", rev$industry_code)
first_pe

pe_rows <- which(rev$industry_code == "PE")
pe_rows

rev <- mutate(rev, pe_rows = match("PE", industry_code))
rev

# Problem 15: Create a new vector called summer_months that contains only "Mar", "Apr", and "May".

summer_months <- month.abb[c(3, 4, 5)]

summer_months

# Problem 16: Take the Company_Name column and replace spaces with underscores in all names.
  # Store the result in a new column called Company_snake.
  # Display the first 6 rows.

library(snakecase)

rev <- mutate(rev, Company_snake = to_snake_case(Company_Name))
rev

# Problem 17: Take the industry_and_number column and wrap it into a string with a prefix like "ID-" using glue().
  # Store the result in a new column called glue_id.
  # Display the first 6 rows.

rev <- mutate(rev, glue_id = glue("ID-{industry_and_number}"))

rev

head(rev$glue_id)

# Problem 18: Take the FY.2015.1 to FY.2019.1 columns and combine all the values of each row into a single string, separated by commas.
  # Store the result in a new column called FY_all_combined.
  # Display the first 6 rows.

rev <- mutate(rev, FY_all_combined = apply(rev[, c("FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1", "FY.2019.1")], 1, 
                                           function(x) paste(x, collapse = ",")))

head(rev$FY_all_combined)