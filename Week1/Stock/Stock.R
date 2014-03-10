# Load data from csv files
IBM = read.csv("IBMStock.csv")
GE = read.csv("GEStock.csv")
ProcterGamble = read.csv("ProcterGambleStock.csv")
CocaCola = read.csv("CocaColaStock.csv")
Boeing = read.csv("BoeingStock.csv")

# Convert dates
IBM$Date = as.Date(IBM$Date, "%m/%d/%y")
GE$Date = as.Date(GE$Date, "%m/%d/%y")
CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")
ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")
Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

# Summary Statistics
summary(IBM)
summary(GE)
summary(ProcterGamble)
summary(CocaCola)
summary(Boeing)

# Standard Deviation
sd(ProcterGamble$StockPrice)

# Plot superposition of two lines, add vertical line
plot(CocaCola$Date, CocaCola$StockPrice, type="l")
lines(ProcterGamble$Date, ProcterGamble$StockPrice,col="red")
abline(v=as.Date(c("2000-03-01")), lwd=2)

# Plot more stuff
plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432], type="l", col="red", ylim=c(0,210))
lines(CocaCola$Date[301:432], ProcterGamble$StockPrice[301:432],col="blue")
lines(CocaCola$Date[301:432], IBM$StockPrice[301:432],col="black")
lines(CocaCola$Date[301:432], GE$StockPrice[301:432],col="green")
lines(CocaCola$Date[301:432], Boeing$StockPrice[301:432],col="orange")
abline(v=as.Date(c("2000-03-01")), lwd=2)
abline(v=as.Date(c("1997-09-01")), lwd=2)
abline(v=as.Date(c("1997-11-01")), lwd=2)
abline(v=as.Date(c("2004-01-01")), lwd=2)
abline(v=as.Date(c("2005-01-01")), lwd=2)

# Monthly averages
tapply(IBM$StockPrice,months(IBM$Date),mean)
tapply(GE$StockPrice,months(IBM$Date),mean)
tapply(CocaCola$StockPrice,months(IBM$Date),mean)