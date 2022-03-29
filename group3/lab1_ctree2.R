library(rpart)
library(party)
library(tree)

# Conditional Inference Tree for Mileage
fit2M <- ctree(Mileage~Price + Country + Reliability + Type, data=na.omit(cu.summary))
summary(fit2M)

# creates a conditional inference tree, it has graphs at the end to see some of the information for the end nodes more specifically
help("ctree")
plot(fit2M, uniform=TRUE, main="CI Tree Tree for Mileage ")
text(fit2M, use.n=TRUE, all=TRUE, cex=.8)