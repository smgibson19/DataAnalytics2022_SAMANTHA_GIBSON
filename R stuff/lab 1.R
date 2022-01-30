
# importing data
grumpData <- read.csv(file.choose(), header = T) # GPW3_GRUMP_SummaryInformation_2010.csv
epi2010Data <- read.csv(file.choose(), header = T)# EPI2010


# Do these steps for EPI data and Grump data

# exploring the distribution
summary(epi2010Data) 	# stats
fivenum(epi2010Data, na.rm=TRUE)
stem(EPI)		 # stem and leaf plot
help(hist)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI,na.rm=TRUE,bw=1.)) 
help(rug)
rug(EPI) 

# Save your plots, name them. 
# Save the commands you used to generate them.

# Exercise 1: fitting a distribution beyond histograms

# plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
# par(pty="s") 
# qqnorm(EPI); qqline(EPI)
#  x<-seq(30,95,1)
# qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
# qqline(x)


# do the same exploration and fitting for another 2 variables in the EPI_data, i.e. primary variables (DALY, WATER_H, .)
# Try fitting other distributions - i.e. as ecdf or qq


# Comparing distributions
# boxplot(EPI,DALY)

# intercompare: EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_EWATER_E, BIODIVERSITY ** (subject to possible filtering.)
# Note 2010 and 2016 datasets..

# Exercise 2: filtering (populations)
# EPILand<-EPI[!Landlock]
# Eland <- EPILand[!is.na(EPILand)]
# hist(ELand)
# hist(ELand, seq(30., 95., 1.0), prob=TRUE)


# Repeat exercise 1.
# EPI_South_Asia <- EPI[<what is this>]

