# import data
epiData <- read.csv(file.choose(), header = T)
attach(epiData)

# Cumulative Density Function 
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 

# Q-Q plot
par(pty="s") 
qqnorm(EPI); qqline(EPI)

# Simulated data from t-distribution:
x <- rt(250, df = 5)
qqnorm(x); qqline(x)

# Make a Q-Q plot against the generating distribution by: x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

# distributions has several ways to analyze stuff depending on the data distribution
help(distributions)
