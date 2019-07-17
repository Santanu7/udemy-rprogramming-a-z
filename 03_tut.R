MyFirstVector <- c(3,45,56,732)
is.numeric(MyFirstVector)
is.integer(MyFirstVector)
is.double(MyFirstVector)

v2 <- c(3L,12L)
is.numeric(v2)
is.integer(v2)
is.double(v2)

v3 <- c("a","B23","Hello",7)
is.character(v3)
is.numeric(v3)

seq()
rep()

seq(1,15)
1:15

seq(1,15,2)

z <- seq(1,15,4)
z


rep(3,50)
d <- rep(3,50)
rep("a",5)

x <- c(80,20)

y <- rep(x,10)
y

w <- c("a","b","c","d","e")
w[1]
w[-1]
v <- w[-3]
w[1:3]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]

#lygometry

x <- rnorm(5)
x

for(i in x)
{
  print(i)
}

print(x)

n <- 10000000

a <- rnorm(n)
b <- rnorm(n)

#vectorised
c <- a * b
#de-vectorised
d <- rep(NA,n)
for( i in 1:n)
{
  d[i] <- a[i]*b[i]
}

?rnorm()
?c()
?seq()
x <- c("a","b")
A <- seq(from=10,to=20,along.with = x)
?rep()
rep(5:6,each=5)
B <- sqrt(A)
B
paste()

library(ggplot2)
?qplot()
?diamonds
qplot(data=diamonds,carat,price,
      colour=clarity, facets=.~clarity)