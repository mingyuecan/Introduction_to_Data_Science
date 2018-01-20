load(url("http://courseweb.lis.illinois.edu/~jguo24/SFTemps.rda"))
objects()
length(dates)
summary(temp)
hist(temp)
head(dates)
class(dates)
class(dayOfMonth)
class(month)
class(temp)
class(year)
(temp -32)
(temp - 32)5/9
5/9(temp - 32)
[temp - 32]5/9
tempc=-(5/9)*(temp - 32)
tempc=-tempc
plot(temp~dates, col = rainbow(12)[month], type="p", pch=19, cex = 0.3)
rnorm(5, mean = 8, sd = 1993)
Zixin=c(611.8116, -529.7399, 2526.3351, 2219.8547, 1243.0969)
Zixin
normsamps=rnorm(100,2,1)
mean(normsamps)
sd(normsamps)
coerced = 1 * normsamps
norm_frac = length(coerced[coerced > 3]) / length(coerced)
print(norm_frac)
help(rnorm)
pnorm(3, mean = 2, sd = 1, lower.tail = FALSE, log.p = FALSE)

