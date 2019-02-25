#2
x <- c(2,5,8,12,16)
y <- 5:9
z <- x-y

#3
x <- seq(from=2,by=3,length.out=100)
x1 <- x[c(5,10,15,20)]
x2 <- x[seq(from=5,to=20,by=5)]
x3 <- matrix(x,ncol=4,byrow=25)
#x4 <- matrix(x,ncol=4)
x5 <- x3[,c(2,3)]

#4
setwd("c:/Users/wangsaja/Desktop/2019/module2")
data1 <- read.delim("sample_file.txt") 
data1[11,]
#head(data1)
mean(data1$Length)
y <- data1$Length[data1$Length < 65]

#5
x <- seq(from = 0, to = 10, by = 0.5)
y <- 2 + 3 * x + rnorm(21)
plot(y ~ x)
lm(y ~ x)
abline(lm(y ~ x))
##
#5
y <- rgamma(100,shape=1,rate=3)
mean(y)
hist(y, freq = FALSE)
lines(density(y))

#7
x=rnorm(1)
for (t in 2:10^3) x=c(x,0.09*x[t-1] + rnorm(1))

plot(x,type="l",xlab="time",ylab="x",lwd=2,lty=2,
        col="steelblue",ylim=range(cumsum(x)))
lines(cumsum(x),lwd=2,col="orange3")



