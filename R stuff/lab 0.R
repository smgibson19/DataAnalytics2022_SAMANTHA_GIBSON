library(ISLR)
data(Auto)
head(Auto)
names(Auto)
summary(Auto$mpg)
fivenum(Auto$mpg)
boxplot(Auto$mpg)
hist(Auto$mpg)

data1 <- read.csv(file.choose(), header = TRUE)
data1

View(data1)
dim(data1)
