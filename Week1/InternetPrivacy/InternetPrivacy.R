# Load data from csv files
poll = read.csv("AnonymityPoll.csv")

# Investigate a variable
table(poll$Smartphone)

table(poll$Region,poll$States)
table(poll$Internet.Use,poll$Smartphone)

limited = subset(poll, Internet.Use == 1 | Smartphone == 1)
summary(limited)