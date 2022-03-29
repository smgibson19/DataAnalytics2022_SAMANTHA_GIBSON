library(rpart)
library(party)
library(tree)


fitK <- ctree(Kyphosis ~ Age + Number + Start, data=kyphosis)
plot(fitK, uniform=TRUE, main="Conditional Inference Tree for Kyphosisâ")
text(fit2M, use.n=TRUE, all=TRUE, cex=.8)

plot(fitK, main="Conditional Inference Tree for Kyphosis",type="simple")

fit2M <- ctree(Mileage~Price + Country + Reliability + Type, data=na.omit(cu.summary))
summary(fit2M)
