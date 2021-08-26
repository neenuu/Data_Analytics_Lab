
#a.Get the dataset from UCI ML Repository: https://archive.ics.uci.edu/ml/datasets/iris.

iris.uci <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), 
            header=FALSE, 
            col.names=c("sepal.length","sepal.width","petal.length","petal.width","species"))

head(iris.uci)

#b.Find the mean of all the metrics (Sepal.Length Sepal.Width Petal.Length Petal.Width)
colMeans(iris[sapply(iris, is.numeric)]) 


#c.Compute the sum of all the metrics across species and group by species.
aggregate(iris[,1:4],by=list(iris$Species),FUN=sum, na.rm=TRUE)


#d.Compute the count of all the metrics across species and group by species.
aggregate(iris[,1:4],by=list(iris$Species),FUN=length)


#e.Compute the maximum of all the metrics across species and group by species.
aggregate(iris[,1:4],by=list(iris$Species),FUN=max, na.rm=TRUE)






