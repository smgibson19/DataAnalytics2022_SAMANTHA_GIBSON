#load packages
library(magrittr)

mvData <- read.csv(file.choose(), header = T)
View(mvData)
head(mvData)
attach(mvData)

mm <- lm(mvData$Homeowners~mvData$Immigrant)
mm
summary(mm)$coef

#plotting points
plot(mvData$Homeowners~mvData$Immigrant)
abline(mm)
abline(mm, col = 2, lwd = 3)

immigrantData <- data.frame(mvData$Immigrant)
mm %>% predict(immigrantData)

abline(mm)
abline(mm, col = 3, lwd = 3)
attributes(mm)
mm$coefficients

#ggplot2, different ways to graph plots
library(ggplot2)
qplot(mvData$Homeowners, mvData$Immigrant)
qplot(Homeowners, Immigrant, data = mvData)
ggplot(mvData, aes(x = Homeowners, y = Immigrant))+ geom_point()

#points are connected
plot(mvData$Homeowners, mvData$Immigrant, type = "l")
points(mvData$Homeowners, mvData$Immigrant)

lines(mvData$Homeowners, mvData$Immigrant/2, col = "red")
points(mvData$Homeowners, mvData$Immigrant/2, col = "blue")

#plot with lines 
qplot(mvData$Homeowners, mvData$Immigrant, geom = "line")
qplot(Homeowners, Immigrant, data = mvData, geom = "line")
ggplot(mvData, aes(x = Homeowners, y = Immigrant))+ geom_line() + geom_point()

#bar graphs
barplot(mvData$area, names.arg = mvData$City, xlab = "City", ylab = "Area")
table(area)
barplot(table(area))

qplot(mvData$Population)
qplot(factor(mvData$Population))

qplot(factor(Population), data = mvData)
ggplot(mvData, aes(x = factor(Population))) + geom_bar()


#histograms
hist(mvData$Immigrant)
hist(mvData$Immigrant, breaks = 10)
qplot(Immigrant, data = mvData, binwidth = 4)
ggplot(mvData, aes(x = Immigrant)) + geom_histogram(binwidth = 4)
ggplot(mvData, aes(x = Immigrant)) + geom_histogram(binwidth = 5)


#box plots
plot(mvData$Population, mvData$Income)
boxplot(Income~Population, data = mvData)

qplot(mvData$Population, mvData$Income, geom = "boxplot")



