# import libraries
library(e1071)

# import data
data(Titanic)
mdl <- naiveBayes(Survived ~ ., data = Titanic)
mdl

