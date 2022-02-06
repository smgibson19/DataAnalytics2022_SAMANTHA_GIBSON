
mvData <- read.csv(file.choose(), header = T)
View(mvData)
head(mvData)
attach(mvData)

mm <- lm(mvData$Homeowners~mvData$Immigrant)
mm
summary(mm)$coef

plot(mvData$Homeowners~mvData$Immigrant)
abline(mm)
abline(mm, col = 2, lwd = 3)

immigrantData <- data.frame(mvData$Immigrant)
mm %>% predict(immigrantData)

abline(mm)
abline(mm, col = 3, lwd = 3)
attributes(mm)
mm$coefficients






