# To run this script on the command line, use:
# source("/Users/gmayer/Dropbox/Work/5.Edx/Analytics/Week1/Demographics.R")

# Load data from csv files
CPS = read.csv("CPSData.csv")
Metro = read.csv("MetroAreaCodes.csv")
Country = read.csv("CountryCodes.csv")

# Explore the structure of the CPS data
str(CPS)
summary(CPS)

# Explore particular variables in the data
sort(table(CPS$Industry))
sort(table(CPS$State))

# Investigate relationship between NA for particular variables
table(CPS$Age, is.na(CPS$Married))
table(CPS$Region, is.na(CPS$Married))
table(CPS$State,is.na(CPS$MetroAreaCode))
table(CPS$Region,is.na(CPS$MetroAreaCode))


tapply(CPS$State,is.na(CPS$MetroAreaCode),mean)