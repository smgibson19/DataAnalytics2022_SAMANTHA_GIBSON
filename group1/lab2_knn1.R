# import libraries
library(class)

# read data in
nyt1 <- read.csv(file.choose(), header = T)

# gets rid of the zeros
nyt1 <- nyt1[which(nyt1$Impressions>0 & nyt1$Clicks>0 & nyt1$Age>0),]

# dim gives the dimensions of the object
nyt1Dim <- dim(nyt1)[1]

# training with sampleRate
samplingRate = 0.9
numTestSetLabels = nyt1Dim*(1.-samplingRate)
training <- sample(1:nyt1Dim,samplingRate*nyt1Dim, replace=FALSE)

# train the data with the training set
train <- subset(nyt1[training,],select=c(Age,Impressions))

# testing
testing <- setdiff(1:nyt1Dim,training)
test <- subset(nyt1[testing,],select=c(Age,Impressions)) # defines the test set

genderLabels <- nyt1$Gender[training] # construct labels for gender variable in the training set
trueLabels <- nyt1$Gender[testing] # construct true labels the other variable in the test set

# run the classifier, can change k
classif <- knn(train, test, genderLabels, k=5)
classif
attributes(.Last.value)