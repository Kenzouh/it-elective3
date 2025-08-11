Sales <- read.csv(file.choose(), header=T) 

# Problem 1: Display The first 6 rows of the dataset, the column names, The structure of the dataset.

Sales
head(Sales)
names(Sales)
str(Sales)


# Problem 2: Display The first 10 rows, The column names, The data type (class) of each column.

head(Sales, 10)
names(Sales)
str(Sales)
View(Sales)


# Problem 3:  From your imported Sales dataset, create a new column called Region_Code that contains the first three characters of the Region column.

library(dplyr)

Sales$Region_Code <- substr(Sales$Region, 1, 3)
Sales

Sales <- mutate(Sales, Region_Code = substr(Region, 1, 3))
Sales


# Problem 4: From your dataset, extract the last 4 characters of the SEC_Registration No. column and store them in a new column called Business_Last4.

Sales$Business_Last4 <- substr(Sales$SEC_Registration.No., 8, 11)
Sales

Sales <- mutate(Sales, Business_Last4 = substr(SEC_Registration.No., 8, 11))
Sales


# Problem 5: From the SEC_Registration No. column, find the position of the first occurrence of "000" for each row and store it in a new column named Placement_000.

Sales <- mutate(Sales, Placement_000 = gregexpr("000", SEC_Registration.No.))
Sales


# Problem 6: Create a new column named Match_At_3 that contains the Company_Name only if the "000" substring 
# in SEC_Registration No. starts at position 3; otherwise, put a dash ("-").

Sales <- mutate(Sales, Match_At_3 = ifelse(Placement_000 == 3, Company_Name, "-"))
Sales

Sales$Match_At_3 <- ifelse(Sales$Placement_000 == 3, Sales$Company_Name, "-")
Sales
View(Sales)


# Problem 7: Concatenate the Industry_Code (first 2 characters of SEC_Registration No.) 
# and Business_Last4 (last 4 characters you extracted earlier) into a new column called Industry_And_Number.

Industry_Code <- substr(Sales$SEC_Registration.No., 1, 2)
Industry_Code

Sales <- mutate(Sales, Industry_And_Number = paste(Industry_Code, Business_Last4))
Sales


# Problem 8: Create a new column called Compact_Code that combines Industry_Code and Business_Last4 without any spaces between them.

Sales <- mutate(Sales, Compact_Code = paste(Industry_Code, Business_Last4, sep=""))
Sales


# Problem 9: convert the columns FY.2015.1 to FY.2019.1 into numeric (if they aren’t already), 
# then create a new column called Average_Gross_Revenue that contains the average of those 
# five columns for each row, ignoring NA values.

is.numeric(Sales$FY.2015.1)
is.numeric(Sales$FY.2016.1)
is.numeric(Sales$FY.2017.1)
is.numeric(Sales$FY.2018.1)
is.numeric(Sales$FY.2019.1)

Sales$FY.2015.1 <- as.numeric(Sales$FY.2015.1)
Sales$FY.2016.1 <- as.numeric(Sales$FY.2016.1)
Sales$FY.2017.1 <- as.numeric(Sales$FY.2017.1)
Sales$FY.2018.1 <- as.numeric(Sales$FY.2018.1)
Sales$FY.2019.1 <- as.numeric(Sales$FY.2019.1)

is.numeric(Sales$FY.2015.1)
is.numeric(Sales$FY.2016.1)
is.numeric(Sales$FY.2017.1)
is.numeric(Sales$FY.2018.1)
is.numeric(Sales$FY.2019.1)

Sales$Average_Gross_Revenue <- rowMeans(
  Sales[, c("FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1", "FY.2019.1")],
  na.rm = TRUE
)
Sales

Sales <- mutate(Sales, Average_Gross_Revenue = rowMeans(
  Sales[, c("FY.2015.1", "FY.2016.1", "FY.2017.1", "FY.2018.1",  "FY.2019.1")],
  na.rm = TRUE
))
Sales


# Problem 10: Create a new dataset called TopPerformers that contains only the rows where Average_Gross_Revenue is greater than 200.

TopPerformers <- Sales[Sales$Average_Gross_Revenue > 200, ]
TopPerformers

TopPerformers <- filter(Sales, Average_Gross_Revenue > 200)
TopPerformers


# Problem 11:  create a new column called Revenue_Remark that labels each company as:
  # "High" if Average_Gross_Revenue is ≥ 200
  # "Medium" if it’s between 100 and 199.99
  # "Low" if it’s < 100

Sales <- mutate(Sales, Revenue_Remark = ifelse(Average_Gross_Revenue >= 200, "High",
                                        ifelse(Average_Gross_Revenue >= 100, "Medium", "Low")
                                        )
)
Sales


# Problem 12: Create a new data frame named CALABARZON_High that contains only the companies 
# from the Region "CALABARZON" and with Revenue_Remark equal to "High".

CALABARZON_High <- filter(Sales, Region == "CALABARZON", Revenue_Remark == "High")
CALABARZON_High