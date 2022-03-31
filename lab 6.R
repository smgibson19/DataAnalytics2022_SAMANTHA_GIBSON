# import libraries
library(randomForest)
library(rpart)
library(party)
library(tree)


# import data
data(Titanic)
View(Titanic)


# rpart 

# graph a decision tree with labels
tittanicPart <- rpart(Survived ~ Age + Sex + Freq, data = Titanic)
plot(tittanicPart) # try some different plot options
text(tittanicPart) # try some different text options
plotcp(tittanicPart)
summary(tittanicPart)
par(mfrow=c(1,2)) 
rsq.rpart(tittanicPart) # visualize cross-validation results


# ctree
# makes a fancier graph with little graphs going off of the decision tree
treeTitanic<-ctree(Survived ~ ., data = Titanic)
plot(treeTitanic)

# prints a table of the number of trees, responses, inputs, and observations
cforest(Survived ~ ., data = Titanic, controls=cforest_control(mtry=2, mincriterion=0))

# creates a graph based off of all of the information in the data frame
tr <- tree(Survived ~ ., data=Titanic)
tr
tr$frame
plot(tr)
text(tr)
#find "prettier" ways to plot the tree



# random forest for: Survived 

# implement random forest algorithm
# can be used in unsupervised mode for assessing proximity among data points
fitT <- randomForest(Survived ~ Age + Sex,   data=Titanic)
print(fitT) 	# view results
importance(fitT) # importance of each predictor
varImpPlot(fitT)
plot(fitT)
getTree(fitT,1, labelVar=TRUE)
