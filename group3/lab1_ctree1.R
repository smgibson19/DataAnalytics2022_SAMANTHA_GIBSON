library(rpart)
library(party)
library(tree)

# makes a decision tree looking plot, plot makes the lines, text adds text to it
swiss_rpart <- rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart) # try some different plot options
text(swiss_rpart) # try some different text options

# makes a fancier graph with little graphs going off of the decision tree
treeSwiss<-ctree(Species ~ ., data=iris)
plot(treeSwiss)

# prints a table of the number of trees, responses, inputs, and observations
cforest(Species ~ ., data=iris, controls=cforest_control(mtry=2, mincriterion=0))
treeFert<-ctree(Fertility ~ Agriculture + Education + Catholic, data = swiss)
cforest(Fertility ~ Agriculture + Education + Catholic, data = swiss, controls=cforest_control(mtry=2, mincriterion=0))

# creates a graph based off of all of the information in the data frame
tr <- tree(Species ~ ., data=iris)
tr
tr$frame
plot(tr)
text(tr)
#find "prettier" ways to plot the tree