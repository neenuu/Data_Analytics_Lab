#take a random sample from the normal distribution, and plot the estimated density function
y <- rnorm(50)
plot(density(y), type = "l")

#Now take repeated samples of size 4, calculate the mean for each such sample, and plot the density
#function for the distribution of means
size <- 4
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "red")

#Repeat the above: taking samples of size 9
size <- 9
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "green")

#Repeat the above: taking samples of size 25
size <- 25
av <- numeric(50)
for (i in 1:50) {
  av[i] <- mean(rnorm(size))
}
lines(density(av), col = "blue")