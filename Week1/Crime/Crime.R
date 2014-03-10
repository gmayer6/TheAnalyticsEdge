# Load data from csv files
mvt = read.csv("mvtWeek1.csv")

# Convert dates
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert

# Subset
Top5 = subset(mvt, LocationDescription == 'STREET' | 
LocationDescription == 'PARKING LOT/GARAGE(NON.RESID.)' | 
LocationDescription == 'ALLEY' |
LocationDescription == 'DRIVEWAY - RESIDENTIAL' |
LocationDescription == 'GAS STATION')

# Clean Data
Top5$LocationDescription = factor(Top5$LocationDescription)