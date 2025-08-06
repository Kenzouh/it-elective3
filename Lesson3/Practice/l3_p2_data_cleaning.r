library(dplyr)

Rev <- read.csv(file.choose(), header=T)
View(Rev)
Rev

# 1. First 2 letters in Registration Code is Industry Code, add new column to show Industry Code
Rev$Industry_Code <- substr(Rev$SEC_Registration.No., 1, 2)
Rev <- mutate(Rev, Industry_Code = substr(SEC_Registration.No., 1, 2))
Rev

# 2. Last 4 Digits in Registration Code is Business number, Show Business Number
Rev$Business_Number <- substr(Rev$SEC_Registration.No., 8, 11)
Rev

# 3. Extract text from 2nd to 7th place
substr(Rev$SEC_Registration.No., 2, 7)

# 4. Find the placement of the first "000"
Rev <- mutate(Rev, Placement_of_000 = gregexpr('000', Rev$SEC_Registration.No.))
Rev$Placement_000 <- gregexpr('000', Rev$SEC_Registration.No.)
Rev

# 5. From the SEC Registration Code, print the company names whose the "000" substring starts with 3,
# otherwise, leave it "blank" if not

if_else(Rev$Placement_of_000 == '3', Rev$Company_Name, "-")

# 6. Concatenate Industry Code and Business Number

Rev$Industry_And_Number <- paste(Rev$Industry_Code, Rev$Business_Number, sep="")
Rev

# 7. Combine all the values of Gross Revenue horizontally from FY2015
Rev$FY.2015.1 <- as.numeric(Rev$FY.2015.1)
Rev$FY.2016.1 <- as.numeric(Rev$FY.2016.1)
Rev$FY.2017.1 <- as.numeric(Rev$FY.2017.1)
Rev$FY.2018.1 <- as.numeric(Rev$FY.2018.1)
Rev$FY.2019.1 <- as.numeric(Rev$FY.2019.1)

Rev$Total_Gross_Revenue <- rowSums(Rev[, c("FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1", "FY.2019.1")], na.rm = TRUE)
Rev