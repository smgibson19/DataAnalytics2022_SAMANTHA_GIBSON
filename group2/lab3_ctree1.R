# download data 
library(rpart)
library(party)
library(tree)

help("rpart")

# regression tree
swiss_rpart <- rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart) # try some different plot options
text(swiss_rpart) # try some different text options

# conditional inference trees
help("ctree")
treeSwiss <- ctree(Species ~ ., data=iris)
plot(treeSwiss)

# implementation of the random forest and bagging ensemble algorithms
help("cforest")
cforest(Species ~ ., data=iris, controls=cforest_control(mtry=2, mincriterion=0))

treeFert<-ctree(Fertility ~ Agriculture + Education + Catholic, data = swiss)

cforest(Fertility ~ Agriculture + Education + Catholic, data = swiss, controls=cforest_control(mtry=2, mincriterion=0))

tr <- tree(Species ~ ., data=iris)
tr
tr$frame
plot(tr)
text(tr) # adds text to the tree
