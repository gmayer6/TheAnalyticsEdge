# Load data from csv files
AP = read.csv("AnonymityPoll.csv")

# Investigate a variable
table(poll$Smartphone)

table(poll$Region,poll$States)
table(poll$Internet.Use,poll$Smartphone)