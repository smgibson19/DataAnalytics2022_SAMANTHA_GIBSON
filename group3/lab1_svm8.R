
# setting x and y values
x <- rbind(matrix(rnorm(120), ,2),matrix(rnorm(120,mean=3), ,2))
y <- matrix(c(rep(1,60),rep(-1,60)))

help("ksvm") # tool for classification, novelty detection, and regression
svp <- ksvm(x,y,type="C-svc")
plot(svp,data=x)


#kernelMatrix
help("as.kernelMatrix") # can be used to coerce the kernelMatrix class to matrix objects representing a kernel matrix.
K <- as.kernelMatrix(crossprod(t(x)))
svp2 <- ksvm(K, y, type="C-svc")
svp2

