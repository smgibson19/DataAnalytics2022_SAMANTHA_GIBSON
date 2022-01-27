
temperature <- 4.5
class(temperature)
RPI <- "Rensselaer Polytechnic Institute"
class(RPI)
Rpi <- 3.14159265359
class(Rpi)
isSnowing <- FALSE
class(isSnowing)
R <- FALSE
class(R)



num_vect <- c(1,3,5,99)
class(num_vect)

cha_vect <- c("R", "P", "I")
class(cha_vect)

vect_mixed <- c("RPI", 1824, 3.14)
vect_mixed
class(vect_mixed)
vect_bool_mix <- c(TRUE, 1824,F)
class(vect_bool_mix)

vect_1 <- c(1,8,2,4)
vect_1[1] # indexing starts at 1

m <- c(1:10)
m

matrix(m, nrow = 2)
matrix(1:12, byrow = FALSE, nrow = 4)
matrix(1:12, byrow = TRUE, nrow = 4)

goog <- c(560, 564, 563, 562, 561)
msft <- c(480, 482, 484, 483, 482)

stocks <- c(goog, msft)
stocks
print(stocks)

stock.matrix <- matrix(stocks, byrow = T, nrow = 2)
stock.matrix

days <- c("Mon", "Tue", "Wed", "Thur", "Fri")
st.names <- c("goog", "msft")
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
print(stock.matrix)

mat <- matrix(1:25, byrow = T, nrow = 5)
mat 
mat*2
mat/2
mat^2
1/mat
mat >15
mat[mat>15]
mat+mat
mat/mat
colSums(stock.matrix)
rowSums(stock.matrix)
rowMeans(stock.matrix)


FB <- c(223, 224, 225, 223.5, 222)
tech.stocks <- rbind(stock.matrix, FB)
tech.stocks

mat <- matrix(1:50, byrow+T, nrow= 5)
mat
mat[1,]
mat[,1]
mat[1:3,]
mat[1:2, 1:3]
mat[,9:10]
mat[2:3,5:6]



animal <- c('dog', 'cat', 'dog', 'cat', 'cat')
id <- c(1, 2, 3, 4, 5)
temps <- c('cold', 'med', 'hot', 'hot', 'hot', 'cold', 'med')
temps

fact.temps <- factor(temps, ordered = T, levels = c('cold', 'med', 'hot'))
fact.temps
summary(fact.temps)
summary(temps)

undergrads <- c('Freshman', 'Junior', 'Sophomore', 'Junior', 'Senior', 'Sophomore', 'Junior', 'Freshman', 'Senior', 'Junior')
undergrads
factor.undergrads <- factor(undergrads, ordered = T, levels = c('Freshman', 'Sophomore', 'Junior', 'Senior'))
factor.undergrads
summary(factor.undergrads)


A <- c(1,2,3)
B <- c(4,5,6)
A <- rbind(A,B)
A
B

m <- matrix(1:9, nrow = 3)
m
is.matrix(m)
m2 <- matrix(1:25, byrow = T, nrow = 5)
m2
m2[2:3,2:3]
mat2[4:5,4:5]
sum(mat2)
help("runif")
u <- runif(20)
u
runif(matrix(20))
matrix(runif(20),nrow = 4)