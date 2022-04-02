# test kernel matrix i.e. inner/kernel product of test data with
# support Vectors
help("rbind") # take a sequence of vector, matrix or data-frame arguments and combine by columns or rows
xtest <- rbind(matrix(rnorm(20),,2),matrix(rnorm(20,mean=3),,2))

# run tests and predictions
Ktest <- as.kernelMatrix(crossprod(t(xtest),t(x[SVindex(svp2), ])))
predict(svp2, Ktest)


# custom kernel functions woohoo
k <- function(x,y) {(sum(x*y) +1)*exp(-0.001*sum((x-y)^2))}
class(k) <- "kernel"

# download data
data(promotergene)

# train svm using custom kernel
gene <- ksvm(Class~.,data=promotergene[c(1:20, 80:100),],kernel=k, C=5,cross=5)
gene


# text with string kernels
data(reuters)
is(reuters)
tsv <- ksvm(reuters,rlabels,kernel="stringdot", kpar=list(length=5),cross=3,C=10)
tsv


# make data
x <- seq(-20,20,0.1)
y <- sin(x)/x + rnorm(401,sd=0.03)

# train support vector machine
regm <- ksvm(x,y,epsilon=0.01,kpar=list(sigma=16),cross=3)
plot(x,y,type="l")
lines(x,predict(regm,x),col="red")

