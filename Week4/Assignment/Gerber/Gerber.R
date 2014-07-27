gerber = read.csv("gerber.csv")

# Summary Statistics
str(gerber)
summary(gerber)

# Subset the data, taking only those observations that voted
Voted = subset(gerber,voting == 1)

# Build First CART model
# This will produce a tree with only one leaf, because none of the variables are "big enough"
CARTmodel = rpart(voting ~ civicduty + hawthorne + self + neighbors, data=gerber)

# Display tree
prp(CARTmodel)

# Build Second CART
CARTmodel2 = rpart(voting ~ civicduty + hawthorne + self + neighbors, data=gerber, cp=0.0)
prp(CARTmodel2)

# Determine, using only the CART tree plot what fraction (a number between 0 and 1) of "Civic Duty" people voted:
# THE ANSWER IS NOT 0.3, it is 3.1, but I don't really know why

# Build Third CART
CARTmodel3 = rpart(voting ~ civicduty + hawthorne + self + neighbors + sex, data=gerber, cp=0.0)
prp(CARTmodel3)

# 3.1
CARTmodelC= rpart(voting ~ control, data=gerber, cp=0.0)
CARTmodelCS= rpart(voting ~ control + sex, data=gerber, cp=0.0)
prp(CARTmodelC)