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
x ## empty vector

m <- matrix(nrow = 2, ncol =3)
m ## matrix can be defined in R but in actual these are vectors and just presented like matrix.

dim (m) ## gives dimensions of matrix 

m<-1:10 ## create and vector of series from 1 to 10
m 

dim (m) <- c(2,5) ## converts m into a matrix of 2 rows and 5 columns
m  ## its vice versa can also be created because total entries will remains 10. as dim(m) <- c(5,2)
dim(m) <- c(5,2)
m
