
# importing data
grumpData <- read.csv(file.choose(), header = T) # GPW3_GRUMP_SummaryInformation_2010.csv
epi2010Data <- read.csv(file.choose(), header = T)# EPI2010


# fixing first row to be header
names(epi2010Data) <- as.matrix(epi2010Data[1, ])
epi2010Data <- epi2010Data[-1, ]
epi2010Data[] <- lapply(epi2010Data, function(x) 
  type.convert(as.character(x)))
View(epi2010Data)


# exploring the distribution
fivenum(epi2010Data$ENVHEALTH, na.rm=TRUE)
stem(epi2010Data$ENVHEALTH)		 # stem and leaf plot
hist(epi2010Data$ENVHEALTH, prob=TRUE, main = "Histogram of ENVHEALTH", xlab = "ENVHEALTH")
lines(density(epi2010Data$ENVHEALTH, na.rm=TRUE, bw=2.), col = "red")
rug(epi2010Data$ENVHEALTH) 

plot(ecdf(epi2010Data$ENVHEALTH), do.points=FALSE, verticals=TRUE, main = "Plot of ENVHEALTH") 
par(pty="s") 
qqnorm(epi2010Data$ENVHEALTH); qqline(epi2010Data$ENVHEALTH)

x <- rnorm(epi2010Data$ENVHEALTH)
y <- rnorm(epi2010Data$ECOSYSTEM)
qqplot(x, y, xlab = "ENVHEALTH", ylab = "ECOSYSTEM", main = "Q-Q Plot of ENVHEALTH")
qqline(x)

boxplot(epi2010Data$ENVHEALTH,epi2010Data$ECOSYSTEM)

# exercise 2
epiENV<-epi2010Data[!ENVHEALTH]
epiENV <- epiENV[!is.na(epiENV)]
hist(epiENV, prob=TRUE, main = "Histogram of ENVHEALTH", xlab = "ENVHEALTH")

