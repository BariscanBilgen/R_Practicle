die <- c(1,2,3,4,5,6)

int <- 1L

typeof(int)

baris <- c(20,40,50)

sum(baris)
typeof(baris)
typeof(die)

yusuf <-c(1,"1","one")
typeof(yusuf)

kemal <- c(TRUE,FALSE,TRUE)
typeof(kemal)

comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
typeof(comp)


raw(3)
typeof(raw(3))

hand <- c("ace", "king", "queen", "jack", "ten")
typeof(hand)


names(die) <- c("one", "two", "three", "four", "five", "six")

names(die)

attributes(die)
die +1

names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis")
names(die)

names(die) <- NULL
attributes(die)

dim(die) <- c(2, 3)
die
dim(die) <- c(3,2)
die


dim(die) <- c(1, 2, 3)
die

m <- matrix(die, nrow = 2, byrow = TRUE)
m

attributes(m)

ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar


flush<-c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
dim(flush)<- c(5,2)
flush

hand1 <- c("ace", "king", "queen", "jack", "ten", "spades", "spades", "spades", "spades", "spades")
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)

hand2 <- c("ace", "spades", "king", "spades", "queen", "spades", "jack", "spades", "ten", "spades")
matrix(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)


dim(die) <- c(2, 3)
typeof(die)
## "double"
class(die)
## "matrix«
attributes(die)
now <- Sys.time()
now
typeof(now)
## "double«
class(now)
## "POSIXct" "POSIXt«
unclass(now)

attributes(now)


mil <- 1000000
mil
## 1e+06
class(mil) <- c("POSIXct", "POSIXt")
mil


gender <- factor(c("male", "female", "female", "male"))
typeof(gender)
attributes(gender)
unclass(gender)
as.character(gender)


card <- c("ace", "hearts", 1)
card

as.character(1)
## "1"
as.logical(1)
## TRUE
as.numeric(FALSE)
## 0


list1 <- list(100:130, "R", list(TRUE, FALSE))
list1

df <- data.frame(face = c("ace", "two", "six"), suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3))
df
typeof(df)
## "list"
class(df)
## "data.frame"
str(df)

df <- data.frame(face = c("ace", "two", "six"),
                 suit = c("clubs", "clubs", "clubs"), value = c(1, 2, 3),
                 stringsAsFactors = FALSE)

str(df)


head(deck, 10)