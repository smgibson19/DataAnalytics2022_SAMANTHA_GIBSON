# import data
library(randomForest)
fitKF <- randomForest(Kyphosis ~ Age + Number + Start, data=kyphosis)
print(fitKF) 	# view results
importance(fitKF) # importance of each predictor

help("importance")

fitSwiss <- randomForest(Fertility ~ Agriculture + Education + Catholic, data = swiss)
print(fitSwiss) # view results
importance(fitSwiss) # importance of each predictor
varImpPlot(fitSwiss)
plot(fitSwiss)

getTree(fitSwiss,1, labelVar=TRUE)

help(randomForest) # look at all the package contents and the randomForest method options
# implements Breiman's random forest algorithm
# It can also be used in unsupervised mode for assessing proximities among data points

# look at rfcv - random forest cross-validation - 
help(rfcv)
# shows the cross-validated prediction performance of models with sequentially reduced number of predictors 

# other data....
data(imports85)
