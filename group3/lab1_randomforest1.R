library(randomForest)

# implement random forest algorithm
# can be used in unsupervised mode for assessing proximity among data points
help("randomForest")
fitKF <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)
print(fitKF) 	# view results
importance(fitKF) # importance of each predictor

# another random forest analysis
fitSwiss <- randomForest(Fertility ~ Agriculture + Education + Catholic, data = swiss)
print(fitSwiss) # view results
importance(fitSwiss) # importance of each predictor
varImpPlot(fitSwiss)

plot(fitSwiss)

getTree(fitSwiss,1, labelVar=TRUE)

help(randomForest) # look at all the package contents and the randomForest method options

# look at rfcv - random forest cross-validation - 
help(rfcv)

# other data....
data(imports85)

# perform randomForest and other tree methods.....
