library(gpairs)

allexamples <- FALSE

y <- data.frame(A=c(rep("red", 100), rep("blue", 100)),
                B=c(rnorm(100),round(rnorm(100,5,1),1)), C=runif(200),
                D=c(rep("big", 150), rep("small", 50)),
                E=rnorm(200))
gpairs(y)

help("gpairs")
data(iris)
gpairs(iris)
if (allexamples) {
  gpairs(iris, upper.pars = list(scatter = 'stats'),
         scatter.pars = list(pch = substr(as.character(iris$Species), 1, 1),
                             col = as.numeric(iris$Species)),
         stat.pars = list(verbose = FALSE))
  gpairs(iris, lower.pars = list(scatter = 'corrgram'),
         upper.pars = list(conditional = 'boxplot', scatter = 'loess'),
         scatter.pars = list(pch = 20))
}
# creates a matrix of plots showing pairwise relationships between quantitative 
# and categorical variables in a complex data set

data(Leaves)
gpairs(Leaves[1:10], lower.pars = list(scatter = 'loess'))
if (allexamples) {
  gpairs(Leaves[1:10], upper.pars = list(scatter = 'stats'),
         lower.pars = list(scatter = 'corrgram'),
         stat.pars = list(verbose = FALSE), gap = 0)
  corrgram(Leaves[,-33])
}
# gives a bunch of graphs in a huge grid, 10 by 10
# more accurate in the center and gets more vague as you go farther 

runexample <- FALSE
if (runexample) {
  data(NewHavenResidential)
  gpairs(NewHavenResidential)
}

