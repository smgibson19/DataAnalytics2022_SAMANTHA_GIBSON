# load cars data set
carSet <- cars[1:30,] # first 30 rows of the original cars data set 
head(carSet)

# add outlier data points
carSetOutliers <- data.frame(speed=c(19,19,20,20,20), dist=c(190,186,210,220,218))
head(carSetOutliers)

carSet2 <- rbind(carSet, carSetOutliers) # rbind is similar to join in SQL

# par sets parameters for sets, query, graphs etc
# this makes both graphs available on the same picture
par(mfrow=c(1, 2))

# plot graph with outliers
plot(carSet2$speed, carSet2$dist, xlim=c(0, 28), ylim=c(0, 230), main="With Outliers", xlab="speed", ylab="dist", 
     pch="*", col="red", cex=2)
# the line is skewed by the outlieing points
abline(lm(dist ~ speed, data=carSet2), col="blue", lwd=3, lty=2)

# plotting the original to see the difference of with and without outliers
plot(carSet$speed, carSet$dist, xlim=c(0, 28), ylim=c(0, 230), main="Outliers removed \n A much better fit!", 
     xlab="speed", ylab="dist", pch="*", col="red", cex=2)
abline(lm(dist ~ speed, data=carSet), col="blue", lwd=3, lty=2)
