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

x <-data.frame(day = 1:4, rain = c (T,T,F,F))
x
row.names(x) <- c("a","b","c","d") ## add row names
x

ncol(x) # gives count of columns.

nrow(x) # gives count of rows.

x <- 1:3
x

names (x) # giving names to columns of vectors


names (x) <- c("Col_A","Col_B","Col_C")
x

names (x)


x <- list (a=1, b=2, c=3)
x

x <- list(a =1:5, b = "ID", c =c("First Name", "Last Name"))
x # displays all 3 lists
x$a ## diplays only a list.

#name the rows and columns of matrix

m<- matrix(1:4, nrow = 2, ncol =2)
dimname(m) # as dimnames were not assigned so the error is being out
#now lets give dimnames and check again out put

dimnames (m) <- list (c("r1","r2"),c("c1","c2"))
m
# now the row and column names are there.

# getting help in R.

## click on help button

#Google is your friend, and Stack over flow. Google is your Friend
# if you find a soultion, you can post on stack over flow to help community

#sub setting

# 
x <- c("a", "b", "c", "C", "d","a")
x
x[1]
x[2]
x[1:4]
u <-x > "a"
u
x[u]
x[x>"a"] # instead of U directly pass logic in []

##subsetting in Matrix

x <- matrix(1:6, 2 ,3)
x
x[1,2]
#indices can also missing
x [1,]
x[,2] # result is shown in vector form, but we want output in form of matrix

# to get data in form of matrix only.

x[1,2, drop = FALSE]

x[1,, drop = FALSE]

#sub setting list

x <- list (weekday = 1:4, rain_prob = 0.6)
x[1] ## the x list contains 1st list as weekdays

x[[1]] ## it would result only list without name
#another and most commonly used method is

x$rain_prob

x["rain_prob"] ## adding square brackets may result in data without list names
x["weekday"]
x[["weekday"]]
x[["rain_prob"]]

x <- list (weekday = 1:4, rain_prob = 0.6, item = "umbrella")
x[c(1,3)]
x[c(3,1)]


#assign a variable with list name
name <- "weekday"

x[[name]]

x$name # this will not give result as name is not a direct list name in x list so it will not give output.

x$weekday ## will give result

## nested elements of a list.

x <- list(a=list(10,12,14),b = c(3.14,2.81))
x[[c(1,3)]] ## by apply 2 square brackets, 1st bracket will go inside x then 2nd bracket go inside a and get its 3rd value

x[[1]][[3]] ## another way

x[[c(2,1)]]

## removing Null / NA valuesx ,

x <- c(1,2,NA,4,NA,5)

bad <- is.na(x)
bad
## inverse bad as
!bad
#get values like
x[!bad]
x
# another way

x <- c(1,2,NA,4,NA,5)
y <- c("a","b",NA,"d",NA,"f")

good <- complete.cases(x,y)
good
x[good]
y[good]

## R have some its own data sets for example
airquality
View(airquality) ## it shows some data have NA values, lets remove them.

airquality[1:6,] # it gives 6 rows data only
good <- complete.cases(airquality) ## create good to remove NAs
airquality[good,][1:6,] ## shows, there are no NAs


### Control Structures, IF ELSE
#if, else testing a condition
# for: executes a loop a fixed number of times
# while: execute a loop while a condition is true
# repeat : execute an infinite loop
# break: break the execution of a loop
# next: skip an iteration of a loop
# return: exist a function

x = 5
a = FALSE
if(x>3){ 
  a = TRUE
}else { 
  a = FALSE
}
a

for (i in 1:10){
  print(i)
}

x <- c("a","b","c","d")
for (i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){ # function seq_along will determine the length of vector itself and run the loop up to end of vector.
  print (x[i])
}


for (letter in x){ # this transfer's x value to letter variable 1st then print function print it on console .
  print (letter)
}

for (i in 1:4) print (x[i]) # as it is single line, so curly brackets are not required.


## nested for loops

x <- matrix (1:6, 2, 3)
x

for (i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print(x[i,j])
  }
}


# while loop

count <- 0
while (count <10){ ## coundition should be meet in any case, else it would be infinite loop
  print (count)
  count <- count +1
}


z <- 5
while(z>=3 && z <=10){
  print(z)
  coin <- rbinom(1,1,0.5)
  if( coin == 1){
    z<- z+1
  } else {
    z<- z-1
  }
}


##functions

x = rnorm(100)
?sd ## help has come
mydata<- x
sd (x = mydata, na.rm=FALSE)
sd (na.rm=FALSE,x = mydata )

args (lm) ## to view description of lm function (linear model)

mydata <- data.frame(x=rnorm(100),y=rnorm(100))
lm(y ~ x,mydata,model = FALSE)
lm(data=mydata,y~x, model = FALSE, 1:100) ## using arguments with and without name are possible without any sequence.


f <- function(a, b=1, c=2, d=NULL){
  print (a)
  print(b)
  print (c)
  print(d)
}
f(b=45)

f(4)
f(a=4,b=3)

## Coding standards for R
# always use text/script file or text editor
# indent your code
# Limit the width of your code (80 columns)
# Limit length of individual functions

### Indenting
# use 4 of indenting 



### vectorized operations
x<-1:4; y<- 6:9
x
y
x+y

x<-1:6; y<- 6:9 # vector of different length
x/y ## warning has been generated

x <- matrix(1:4, 2 , 2); y<- matrix(rep(10,4),2,2)
x*y # element wise multiplication

x/y 

x%*%y # true matrix multiplication




#




## Dates and Time in R
# In R there are 2 separate classes to deal with time and date.
# for class Date, the class name is "Date"
# reference value in R for date calculation is 1970-01-01
# reference value in R for time calculation is 1970-01-01

as.Date("1970-01-01")
as.POSIXct("1970-01-01")
as.POSIXlt("1970-01-01")

## ct only stores values as data frame, and no other information can be extracted.
## lt is a list of underneath and it stores a bunch of other useful information like the day of the week, day of the year, month, day of the month.

## some of the commonly used functions of lt funce are weekdays, months, quarters.


x <- Sys.time()
x

p <- as.POSIXlt(x) ## this is L not I
p

class(x)
names(unclass(p))
p$sec
p$month
p&mon
p$mon
p$mday
p$wday

q <- as.POSIXct((x))
q.sec
q


datestring <- c("January 10, 2012 10:40", "December 9, 2021 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M ")
x
class(x)

x<- as.Date("2012-01-01")
y<- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y

class(x)
class(y)
x <- as.POSIXlt(x)
class(x)
x
x-y
## Time difference of 356.7261 days




x<- as.Date("2012-01-01")
y<- as.Date("2011-05-02")
x-y ## Time difference of 244 days

x <- as.POSIXct("2012-01-01 01:00:00")
y <- as.POSIXct("2011-03-07 11:40:00" , tz = "GMT")
x-y ##Time difference of 299.3472 days


x <- as.POSIXct("2012-01-01 01:00:00")
y <- as.POSIXct("2012-01-01 02:00:00" , tz = "GMT")
x-y ##Time difference of 299.3472 days
