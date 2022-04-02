# import data :)
data(iris)

# create a kernel function using the build in rbfdot function
help("rbfdot") # kernel functions
rbf <- rbfdot(sigma=0.1)
rbf

# train a bound constraint support vector machine
irismodel <- ksvm(Species~.,data=iris,type="C-bsvc", kernel=rbf,C=10,prob.model=TRUE)
irismodel

# get fitted values
fitted(irismodel)

# test on the training set with probabilities as output
predict(irismodel, iris[,-5], type="probabilities")
