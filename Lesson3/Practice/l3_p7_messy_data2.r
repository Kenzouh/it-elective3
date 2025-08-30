# Problem 1: Import the CSV file containing the dataset into R 
# and view the first 6 rows of the dataset. Also, display the column names.

rev <- read.csv(file.choose(), header=T)
head(rev)


# Problem 2: Extract Industry Code
  # From the SEC_Registration.No. column, create a new column called Industry_Code 
  # that contains the first 2 letters of the registration code. 
  # Then, display the first 6 rows with this new column.

rev$Industry_Code <- substr(rev$SEC_Registration.No., 1, 2)
head(rev$Industry_Code)


# Problem 3: Extract Business Number
  # From the SEC_Registration.No. column, create a new column called Business_Number 
  # that contains the last 4 digits of the registration code. 
  # Then, display the first 6 rows of the dataset including this new column.

rev$Business_Number <- substr(rev$SEC_Registration.No., 8, 11)
head(rev$Business_Number)


# Problem 4: Extract Middle Text
  # From the SEC_Registration.No. column, extract the characters from position 2 to 7 
  # and create a new column called Middle_Code. Display the first 6 rows of the dataset
  # including this new column.

rev$Middle_Code <- substr(rev$SEC_Registration.No., 2, 7)
head(rev)


# Problem 5: Find Placement of "000"
  # For each SEC_Registration.No., find the position where the substring "000" first appears
  # and store it in a new column called Placement_of_000. Then, display the first 6 rows 
  # with this new column. 

rev$Placement_of_000 <- gregexpr("000", rev$SEC_Registration.No.)
head(rev)


# Problem 6: Conditional Company Names
  # Create a new column called Company_if_000_starts_at_3 where:
  # If the first "000" in SEC_Registration.No. starts at position 3, show the Company_Name.
  # Otherwise, leave it as "-" (or blank). 

rev$Company_if_000_starts_at_3 <- ifelse(rev$Placement_of_000 == 3, rev$Company_Name, "-")
rev


# Problem 7: Concatenate Columns
  # Create a new column called Industry_And_Number that combines Industry_Code and Business_Number with a space between them. 
  # Then, display the first 6 rows including this new column.

rev$Industry_And_Number <- paste(rev$Industry_Code, rev$Business_Number, sep = " ")
head(rev)


# Problem 8: Sum Gross Revenue
  # The dataset has multiple columns for Gross Revenue (FY.2015.1 to FY.2019.1).
  # Convert these columns to numeric if they aren’t already.
  # Create a new column called Total_Gross_Revenue that sums the values horizontally across these years for each company (ignore NAs).
  # Display the first 6 rows including this new column.
  # Give it a try.

rev$FY.2015.1 <- as.numeric(rev$FY.2015.1) 
rev$FY.2016.1 <- as.numeric(rev$FY.2016.1) 
rev$FY.2017.1 <- as.numeric(rev$FY.2017.1) 
rev$FY.2018.1 <- as.numeric(rev$FY.2018.1) 
rev$FY.2019.1 <- as.numeric(rev$FY.2019.1)

rev$Total_Gross_Revenue <- rowSums(rev[, c("FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1", "FY.2019.1")], na.rm = TRUE) 
head(rev)