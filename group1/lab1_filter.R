# Landlocked
epiData <- read.csv(file.choose(), header = T)

# gets rid of any null values
epiLand <- epiData$EPI[!epiData$Landlock]
epilandFixed <- epiLand[!is.na(epiLand)]

# creates a histogram
hist(epilandFixed)
hist(epilandFixed, seq(30., 95., 1.0), prob=TRUE)
