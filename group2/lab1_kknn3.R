# import data
data(swiss)

# A matrix of scatterplots is produced
help("pairs")
pairs(~ Fertility + Education + Catholic, data = swiss, subset = Education < 20, main = "Swiss data, Education < 20")

