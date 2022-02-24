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

x <- 1:3
y <- 10:12

cbind (x, y) ## to join two matrices of same size only, with column names

rbind (x , y) ##with row name

## list , its not vector
# to create multi type values in a like vector format, but not a vector

## if we give multi type values in a vector c() it will create vector but it will be converted to all values of same type / class. However in List each entry will maintain its own type.
## not type casted

x <- list (1, "a", TRUE , 1 +4i)
x

## Factors , is used when data is classified and divided.
## for example values of vectors are labeled

x <- factor(c("yes", "yes","no","yes","no"))
x

table(x) # it gives labels counts

unclass(x)


f <- factor(c("Punjab","KPK","Sindh", "Punjab"))
f

unclass(f) # definces levels it self.

x  <- factor(c("yes", "yes","no","yes","no"), levels= c("yes","no"))
x
## assignment
x <- factor(c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"))
x
unclass(x)

x <- factor(c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"), levels= c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"))
x
unclass(x)

## Missing values
x<-c(1,2, NA, 10,3)
is.na(x)

is.nan(x) ## NaN and NA are different, NA considera NaN as NA but NAN cannot consider NA as NAN

x <- c(1,2,NaN, NA, 4)
x

is.na(x) #[1] FALSE FALSE  TRUE  TRUE FALSE
is.nan(x) #[1] FALSE FALSE  TRUE FALSE FALSE

## Data Frames, it is used to store lists in table, in form of columns with column headings
## column lengths should be same

## to create data Frames, read.table() and read.csv(), can be converted into matrix.
