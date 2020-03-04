# https://learnxinyminutes.com/docs/r/

data()
data(rivers)
ls()
head(rivers)
length(rivers)
summary(rivers)

stem(rivers)
stem(log(rivers))

hist(rivers, col="#333333", border="white")
hist(log(rivers), col="#333333", border="white")

data(discoveries)
plot(
  discoveries, col="#333333", lwd=3,
  xlab="Year",
  main="Number of Important discoveries per year"
)

plot(
  discoveries, col="#333333", lwd=3,
  type="h", xlab="Year",
  main="Number of Important discoveries per year"
)

sort(discoveries)
stem(discoveries, scale=2)
hist(discoveries, col="#333333", border="white")
max(discoveries)
min(discoveries)
summary(discoveries)

round(runif(7, min=.5, max=6.5))
rnorm(9)

5L
class(5L)
length(5L)

v1 <- c(4L, 5L, 8L, 3L)
length(v1)
class(v1)

5
class(5)
v2 <- c(3,3,3,2,2,1)
class(v2)

5e4
6.02e23
1.6e-35

class(Inf)
class(-Inf)
