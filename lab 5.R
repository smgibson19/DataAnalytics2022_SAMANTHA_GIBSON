library(ISLR)
library(magrittr)
library(dbplyr)
library(dplyr)


# set up hitters data
head(Hitters)
dim(Hitters)
is.na(Hitters)

# summary of hitters data
hittersData <- na.omit(Hitters)
dim(hittersData)
head(hittersData)

# linear regression of salary prediction
salaryPredictModel <- lm(Salary ~., data = hittersData)
summary(salaryPredictModel)

#cooks distance
cooksDist <- cooks.distance(salaryPredictModel)
influential <- cooksDist[(cooksDist > (3 * mean(cooksDist, na.rm = TRUE)))]
influential

# get rid of outliers to see if the fit is better
names <- names(influential)
names

# anti_join 
outliers <- hittersData[names,]
hittersWithoutOutliers <- hittersData %>% anti_join(outliers)

# model without outliers
salaryPredictModel2 <- lm(Salary ~., data = hittersWithoutOutliers)
summary(salaryPredictModel2)

