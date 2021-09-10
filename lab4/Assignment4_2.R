#consider the measurements of body weight (body),in the data frame Animals (MASS). 
#Begin by drawing a histogram of the untransformed values,and overlaying a density curve
library(MASS)
plot(density(Animals$body))

#a. Draw an estimated density curve for the logarithms of the values
logbody <- log(Animals$body)
plot(density(logbody))

#b.Determine the mean and standard deviation of log(Animals$body).

av <- mean(logbody)
sdev <- sd(logbody)

# Overlay the estimated density with the theoretical density for a normal distribution with the mean
#and standard deviation just obtained
xval <- pretty(c(av - 3 * sdev, av + 3 * sdev), 50)
lines(xval, dnorm(xval, mean = av, sd = sdev))