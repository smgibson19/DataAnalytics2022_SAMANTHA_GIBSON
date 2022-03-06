# import data
epiData <- read.csv(file.choose(), header = T)

View(epiData)
# attach attaches the objects in the database can be accessed by simply giving their names
attach(epiData)

fix(epiData) 	# launches a simple data editor
EPI 			# prints out values EPI_data$EPI
tf <- is.na(EPI) # records True values if the value is NA
E <- EPI[!tf] # filters out NA values, new array

#other data
grumpData <- read.csv(file.choose(), header = T)