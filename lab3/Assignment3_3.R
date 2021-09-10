# Simulate a simple dataset of 10 points.Create a heat map to visualize relationships between the variables
x<-rnorm(10,mean=rep(1:5,each=2),sd=0.7) 
y<-rnorm(10,mean=rep(c(1,9),each=5),sd=0.1)
dataFrame<-data.frame(x=x,y=y)
set.seed(143)
View(dataFrame)
dataMatrix<-as.matrix(dataFrame)[sample(1:10),] # convert to class 'matrix', then shuffle the rows of the matrix
heatmap(dataMatrix) # visualize hierarchical clustering via a heatmap 