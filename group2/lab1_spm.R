# import data

library(car)
scatterplotMatrix(iris)
# and
scatterplotMatrix(swiss)

help("scatterplotMatrix")
# This function provides a convenient interface to the pairs function to produce 
# enhanced scatterplot matrices, including univariate displays on the diagonal 
# and a variety of fitted lines, smoothers, variance functions, 
# and concentration ellipsoids. spm is an abbreviation for scatterplotMatrix