install.packages("ggplot2movies")
library(ggplot2movies)
data(movies)

movies<-movies[movies$year==2000,]

set.seed(1848)
s<-sample(1:2,2048,replace=T)
l<-split(movies$length,s)
length1<-l[[1]]
length2<-l[[2]]

mean(length1) 
sd(length1)   
mean(length2)
sd(length2)   

set.seed(1848)
rnorm(100)
mean(rnorm(100))
-0.09746113
mean_dist<-replicate(100,mean(rnorm(100)))
hist(mean_dist)

HW.Bootstrap=function(n,reps) {
  set.seed(1848) 
  mean_dist<-replicate(reps,mean(rnorm(n)))
  hist(mean_dist)
  return(mean_dist)
}
  

housing <- read.table(url("https://archive.ics.uci.edu/ml/machine-learning-databases/housing/housing.data"),sep="")
names(housing) <- c("CRIM","ZN","INDUS","CHAS","NOX","RM","AGE","DIS","RAD","TAX","PTRATIO","B","LSTAT","MEDV")

lmfit<-lm(housing$MEDV~housing$CRIM)
plot(lmfit)
plot(housing$CRIM,housing$MEDV)

summary(lmfit)



