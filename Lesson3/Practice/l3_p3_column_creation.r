# Problem 1: Import and view
# Import the dataset using read.csv() and store it in an object named Companies.

Companies <- read.csv(file.choose(), header=T)
Companies

# View the structure of the dataset using appropriate functions.
View(Companies)

# Show the first 5 rows of the dataset.
head(Companies, 5)


# Problem 2: 
# Create a new column called Industry_Code.
# Extract the first 2 characters from the SEC_Registration.No. column and assign them to Industry_Code.

Companies <- mutate(Companies, Industry_Code = substr(SEC_Registration.No., 1, 2))
Companies
Companies$Industry_Code2 <- substr(Companies$SEC_Registration.No., 1, 2)
Companies

# Problem 3: Extract Business Number
# Create a new column called Business_Number.
# Extract the last 4 characters from SEC_Registration.No. and assign them.

Companies <- mutate(Companies, Business_Number = substr(SEC_Registration.No., 8, 11))
Companies
Companies$Business_Number <- substr(Companies$SEC_Registration.No., 8, 11)
Companies

# Problem 4: Middle Code
# Extract the substring from position 2 to 7.
# Store it in a new column called Middle_Code.

Companies <- mutate(Companies, Middle_Code = substr(SEC_Registration.No., 2, 7))
Companies
Companies$Middle_Code <- substr(Companies$SEC_Registration.No., 2, 7)
Companies

# Problem 5: Use gregexpr() to detect the position of "000" in SEC_Registration.No..
# Store the result in a new column called Placement_000.

Companies <- mutate(Companies, Placement_000 = gregexpr("000", SEC_Registration.No.,))
Companies
Companies$Placement_000 <- gregexpr("000", Companies$SEC_Registration.No.)
Companies


# Problem 6: Create a new column named Match_At_3.
# If the first "000" in SEC_Registration.No. starts at position 3, copy the company name into Match_At_3.
# If not, insert "-" instead.

Companies <- mutate(Companies, Match_At_3 = ifelse(Placement_000 == 3, Company_Name, "-"))
Companies

Companies$Match_At_3 <- ifelse(Companies$Placement_000 == 3, Companies$Company_Name, "-")
Companies

# Problem 7: Concatenate Industry Code + Business Number
# Create a new column called Industry_And_Number.
# Concatenate Industry_Code and Business_Number together as one string (no space or separator).

Companies <- mutate(Companies, Industry_And_Number = paste(Industry_Code, Business_Number, sep=""))
Companies

Companies$Industry_And_Number <- paste(Companies$Industry_Code, Companies$Business_Number, sep="")
Companies