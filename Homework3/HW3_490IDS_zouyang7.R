myfunc <- function(z) return(c(z,z^2, z^3%/%2))
y = 2:8
myfunc(y)
matrix(myfunc(y),ncol=3)
m<-t(sapply(2:8,"myfunc",simplify = TRUE))
apply(m,1,prod)
apply(m,2,sum)
colSums(m)
m/2
apply(m,1:2,function(x) x/2)

l <- list(a = 1:10, b = 11:20)
lapply(l,prod)
lapply(l,var)
class(lapply(l,var))
class(sapply(l,var))
l.2 <- list(c = c(21:30), d = c(31:40))
mapply(sum,l,l.2)
lapply(l,log)
l<-sapply(l,unlist)
l.2<-sapply(l.2,unlist)
mylist<-list(l,l.2,m)
lapply(mylist,function(x) x[,1])

load(url("http://courseweb.lis.illinois.edu/~jguo24/family.rda"))
tapply(fbmi,fgender,mean)
class(objects(family))
fnames[order(fheight,decreasing=TRUE)]

tapply(iris$Petal.Length,iris$Species,mean)
by(iris[,1:4],iris$Species,colSums)

tapply(iris$Petal.Length,iris$Species,mean)
by(iris[,1:4],iris$Species,colSums)

lmfit<-lm(fweight~fheight)
summary(lmfit)
plot(fheight, fweight, xlab="height", ylab="weight")
abline(lmfit)


