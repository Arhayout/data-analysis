rm(list = ls())

co2 <- as.numeric(co2)
plot(co2, type = "l")
n <- length(co2)

# construct a time series z, built independently from co2, such that cor(co2, z) > 0.95

# z <-  TO BE COMPLETED 
z <- seq(300, 360, length.out = n)
# ou
# z <- 1:n
lines(z)
cor(co2, z)

# -- CAC --
CAC <- EuStockMarkets[,3]
CAC <- as.numeric(CAC)
plot(CAC, type = "l")
 
# construct a time series z, built independently from CAC, such that cor(CAC, z) > 0.95

# z <-  TO BE COMPLETED
n <- length(CAC)
z <- seq(1, n)
z <- exp(z * log(max(CAC)) / n)
# ou 
# z <- exp(seq(1, 10, length.out= n))
lines(z)
cor(CAC, z)





