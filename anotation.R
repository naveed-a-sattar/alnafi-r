7 -> s
print (s)
c <- 1:20
c
s = 2

x <- c(0.5, 0.6)
class(x) ## numeric

x <- c(TRUE, FALSE)

class (x) ## logical

x <- c(T, F)
class (x)  ## logical

x <- c("T", "F")
class (x) ## character

x <- c("a", "b", "c")
class (x) ## character

x <- 9:29
class (x) ## integer

x <-c(1+9i, 2+4i)
class (x) ## complex

x <- vector("numeric", length = 10)
x
