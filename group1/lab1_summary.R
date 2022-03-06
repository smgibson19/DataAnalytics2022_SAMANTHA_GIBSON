# import data
epiData <- read.csv(file.choose(), header = T)

# read data of EPI
summary(epiData$EPI) 
fivenum(epiData$EPI, na.rm=TRUE)

stem(epiData$EPI)		                                     # stem and leaf plot
hist(epiData$EPI)                                        # basic histogram 
hist(epiData$EPI, seq(30., 95., 1.0), prob=TRUE)         # more details histogram
lines(density(epiData$EPI,na.rm=TRUE,bw=1.))             # adds line to graph
rug(epiData$EPI)                                         # rug plot

