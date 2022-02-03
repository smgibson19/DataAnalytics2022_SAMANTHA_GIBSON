
# importing data
grumpData <- read.csv(file.choose(), header = T) # GPW3_GRUMP_SummaryInformation_2010.csv
epi2010Data <- read.csv(file.choose(), header = T)# EPI2010


# fixing first row to be header
names(epi2010Data) <- as.matrix(epi2010Data[1, ])
epi2010Data <- epi2010Data[-1, ]
epi2010Data[] <- lapply(epi2010Data, function(x) 
  type.convert(as.character(x)))
View(epi2010Data)


# ENVHEALTH
fivenum(epi2010Data$ENVHEALTH)
stem(epi2010Data$ENVHEALTH)		

hist(epi2010Data$ENVHEALTH)
hist(epi2010Data$ENVHEALTH, seq(0.05, 100, 1), prob = T, main = "Histogram of ENVHEALTH", xlab = "ENVHEALTH",)
lines(density(epi2010Data$ENVHEALTH, na.rm = T, bw = 1),  col = "red")
rug(epi2010Data$ENVHEALTH) 

plot(ecdf(epi2010Data$ENVHEALTH), do.points=FALSE, verticals=TRUE, main = "Plot of ENVHEALTH") 
par(pty="s") 

qqnorm(epi2010Data$ENVHEALTH); qqline(epi2010Data$ENVHEALTH)

a <- seq(0.05, 100, 1)
qqplot(qt(ppoints(250), df = 5), a, xlab = "ENVHEALTH", main = "Q-Q Plot of ENVHEALTH")
qqline(a)

boxplot(epi2010Data$ENVHEALTH,epi2010Data$ECOSYSTEM)

qqplot(epi2010Data$ENVHEALTH, epi2010Data$ECOSYSTEM,  xlab = "ENVHEALTH", ylab = "ECOSYSTEM", main = "Q-Q Plot of ENVHEALTH & ECOSYSTEM")


# AIR_H
fivenum(epi2010Data$AIR_H)
stem(epi2010Data$AIR_H)		

hist(epi2010Data$AIR_H)
hist(epi2010Data$AIR_H, seq(0, 100, 1), prob = T, main = "Histogram of AIR_H", xlab = "AIR_H",)
lines(density(epi2010Data$AIR_H, na.rm = T, bw = 1),  col = "red")
rug(epi2010Data$AIR_H) 

plot(ecdf(epi2010Data$AIR_H), do.points=FALSE, verticals=TRUE, main = "Plot of AIR_H") 
par(pty="s") 

qqnorm(epi2010Data$AIR_H); qqline(epi2010Data$AIR_H)

a <- seq(0, 100, 1)
qqplot(qt(ppoints(250), df = 5), a, xlab = "AIR_H", main = "Q-Q Plot of AIR_H")
qqline(a)

boxplot(epi2010Data$AIR_H,epi2010Data$ECOSYSTEM)

qqplot(epi2010Data$AIR_H, epi2010Data$ECOSYSTEM,  xlab = "AIR_H", ylab = "ECOSYSTEM", main = "Q-Q Plot of AIR_H & ECOSYSTEM")



# ECOSYSTEM
fivenum(epi2010Data$ECOSYSTEM)
stem(epi2010Data$ECOSYSTEM)		 

hist(epi2010Data$ECOSYSTEM)
hist(epi2010Data$ECOSYSTEM, seq(0, 96, 1), prob = T, main = "Histogram of ECOSYSTEM", xlab = "ECOSYSTEM",)
lines(density(epi2010Data$ECOSYSTEM, na.rm = T, bw = 1),  col = "red")
rug(epi2010Data$ECOSYSTEM) 

plot(ecdf(epi2010Data$ECOSYSTEM), do.points=FALSE, verticals=TRUE, main = "Plot of ECOSYSTEM") 
par(pty="s") 

qqnorm(epi2010Data$ECOSYSTEM); qqline(epi2010Data$ECOSYSTEM)

a <- seq(0, 96, 1)
qqplot(qt(ppoints(250), df = 5), a, xlab = "ECOSYSTEM", main = "Q-Q Plot of ECOSYSTEM")
qqline(a)

qqplot(epi2010Data$ENVHEALTH, epi2010Data$ECOSYSTEM,  xlab = "ENVHEALTH", ylab = "ECOSYSTEM", main = "Q-Q Plot of ENVHEALTH & ECOSYSTEM")
qqplot(epi2010Data$AIR_H, epi2010Data$ECOSYSTEM,  xlab = "AIR_H", ylab = "ECOSYSTEM", main = "Q-Q Plot of AIR_H & ECOSYSTEM")



# Grump exploration
View(grumpData) # don't need to fix the header

#Diff90
fivenum(grumpData$Diff90)
stem(grumpData$Diff90)		

hist(grumpData$Diff90)
hist(grumpData$Diff90, seq(-30, 20, 1), prob = T, main = "Histogram of Diff90", xlab = "Diff90",)
lines(density(grumpData$Diff90, na.rm = T, bw = 1),  col = "red")
rug(grumpData$Diff90) 

plot(ecdf(grumpData$Diff90), do.points=FALSE, verticals=TRUE, main = "Plot of Diff90") 
par(pty="s") 

qqnorm(grumpData$Diff90); qqline(grumpData$Diff90)

a <- seq(-30, 20, 1)
qqplot(qt(ppoints(250), df = 5), a, xlab = "Diff90", main = "Q-Q Plot of Diff90")
qqline(a)


#Diff95
fivenum(grumpData$Diff95)
stem(grumpData$Diff95)		

hist(grumpData$Diff95)
hist(grumpData$Diff95, seq(-60, 20, 1), prob = T, main = "Histogram of Diff95", xlab = "Diff95",)
lines(density(grumpData$Diff95, na.rm = T, bw = 1),  col = "red")
rug(grumpData$Diff95) 

plot(ecdf(grumpData$Diff95), do.points=FALSE, verticals=TRUE, main = "Plot of Diff95") 
par(pty="s") 

qqnorm(grumpData$Diff95); qqline(grumpData$Diff95)

a <- seq(-60, 20, 1)
qqplot(qt(ppoints(250), df = 5), a, xlab = "Diff95", main = "Q-Q Plot of Diff95")
qqline(a)

#compare both
boxplot(grumpData$Diff90,grumpData$Diff95)

qqplot(grumpData$Diff90, grumpData$Diff95,  xlab = "Diff90", ylab = "Diff95", main = "Q-Q Plot of Diff90 & Diff95")

