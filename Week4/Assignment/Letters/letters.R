letters = read.csv("letters_ABPR.csv")

# Make new variable in frame that lists only observations that were the letter B
letters$isB = as.factor(letters$letter == "B")

# Split the data
set.seed(1000)
split = sample.split(letters, SplitRatio = 0.5)
train = subset(letters, split==TRUE)
test = subset(letters, split==FALSE)

# Make a CART model
CARTb = rpart(isB ~ . - letter, data=train, method="class")
tree.pred = predict(CARTb, newdata=test)
table(letters$isB,tree.pred)
(40+74)/(40+37+19+74)
