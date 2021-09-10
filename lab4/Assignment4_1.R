#a Take a random vector and probability associated with it and plot it with a bar graph
s<-c(1,2,3,4,5,6)
# generate the vector of probabilities 
probability <- rep(1/6, 6) 
barplot(probability,names.arg = s, ylim = c(0,.16), main = "Probability Distribution", ylab = "Probability", xlab = "outcomes",col = "#D4A7B1") 

#b For the above problem create a cumulative frequency table and plot the cumulative
  #frequency against each sample point mentioned in the vector

cum_probability <- cumsum(probability) 
# plot the probabilites 
barplot(cum_probability,names.arg = s, ylim = c(0,1), main = "CumulativeProbability Distribution", ylab = "Probability", xlab = "outcomes",col = "#D4A7B1") 


#c generate the probability values for the binomial distribution for the number of children in 10 with blue eyes
#using p =0.16. Plot the obtained result.
x<-0:10
y<-dbinom(0:10,10,0.16)
data.frame("Prob"=y,row.names=x)
plot(0:10,dbinom(0:10,10,0.16),,type='h',xlab="",ylab="Probability",sub="Number of kids with blue eyes")

#d Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
#and 0.8 and see how this changes the distribution
par(mfrow=c(2,2))
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")

#e Consider you have a vector 0:10. Compute poisson distribution with p=0.2. Plot it to visulaise the distribution
x<-0:10
y<-dpois(0:10,0.2)
data.frame("Prob"=y,row.names=x)
plot(0:10, dpois(0:10,0.2), type='h', xlab="x",ylab="Probability" )

