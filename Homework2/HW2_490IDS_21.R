load(url("http://courseweb.lis.illinois.edu/~jguo24/family.rda"))

OW_NHANES=(family$gender=="m"&family$bmi>26)|(family$gender=="f"&family$bmi>25)

OWval=c(26,25)
OW_limit=OWval[as.numeric(family$gender)]
OW_NHANES2=family$bmi>OW_limit

OW_weight=OW_limit*2.2*(2.54/100*family$height)^2
plot(OW_weight, family$weight)


install.packages("vcd")
library(vcd)
attach(Baseball)

objects(Baseball)
length(name1)
summary(team87)
summary(Baseball$sal87) 
Baseball[Baseball$sal87==2460.0, c("name1","name2")]

Baseball1=Baseball[Baseball$league86=="N", c("name1", "name2", "years", "hits86", "homer86", "homeruns","rbi", "sal87")]
Baseball1

quantile(Baseball1$sal87,0.99,na.rm = TRUE)
Baseball1=Baseball1[Baseball1$sal87<=1936.681, ]
Baseball1=na.omit(Baseball1)
Baseball1

hitsperhome=Baseball1$hits86/Baseball1$homer86
Baseball1=data.frame(name1=Baseball1$name1, name2=Baseball1$name2, years=Baseball1$years, hits86=Baseball1$hits86, homer86=Baseball1$homer86, homeruns=Baseball1$homeruns, rbi=Baseball1$rbi, sal87=Baseball1$sal87, hitsperhome)

hr15=sapply(Baseball1$homer86, function(x) ifelse(x>15, 15, x))

plot(Baseball1$homer86, Baseball1$sal87)
cor(Baseball1$homer86, Baseball1$sal87)

