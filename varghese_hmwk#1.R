# Homework #1
# Jerin Varghese

# Problem 1

# Problem 2
# 1.
x <- c(2,5,8,12,16)
# 2.
y <- c(5:9)
# 3.
z <- x-y

# Problem 3
# 1.
x <- seq(from=2,by=3,length.out=100)
# 2.
x[seq(5,20,5)]
# 3.
x[10:20]
# 4.
x3 <- matrix(data=x, nrow=25, ncol=4)
# 5.
matrix(data=x3[,2:3], nrow=25, ncol=2)

# Problem 4
# 1.
working_dir <- "C:/Users/jerin/OneDrive/Documents/JHU/Bayesian Econometrics/Homeworks"
setwd(working_dir)
sample_file <- read.delim('sample_file.txt')
sample_file[11,]
# 2.
mean(sample_file$Length)
# 3.
nrow(sample_file[sample_file$Length > 65,])
# 4. 
sample_file[sample_file$Length > 65,"Length"]

# Problem 5
# 1.
x <- seq(0, 10, 0.5)
# 2.
y <- 2 + 3*x + rnorm(length(x),mean=0,sd=3)
# 3.
plot(x,y)
# 4.
lm.fit <- lm(y~x)
# 5.
plot(x,y) + abline(lm.fit, col="red")

# Problem 6
# 1.
set.seed(42)
gsample <- rgamma(100, shape=1, rate=4)
# 2. theoretical mean is 1/4, this mean is .246 which is very close
mean(gsample)
# 3. 
hist(gsample, prob=TRUE)

# Problem 7
# 1.
set.seed(42)
n <- 1000
white_noise <- ts(rnorm(n))
# initialize first value
ar1 <- c(white_noise[1])
# 2.
for (i in 2:n){
  ar1[i] <- .09*ar1[i-1] + white_noise[i]
}
# 3.
plot(ar1, cumsum(ar1))

