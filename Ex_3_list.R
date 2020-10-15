#list Creation
n = c(23, 23, 65) 
s = c("shankar", "dhruv", "thiyash", "prem", "elango") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)
x
lst <- list ("Red", "Blue", c(42,36,01), FALSE, 73.91, 128.6)
lst
#Naming list
names(lst) <- c("1st Element", "2nd Element", "3rd Element")
#list Built-in functions
is.atomic(lst)
is.recursive(lst)
#Accessing List Elements
lst[3]
lst[1:4]
#List Append,delete Operations
lst[5]<-"shankar"
#Merging two Lists
merged_lst<-c(n,x)
merged_lst
#typeof() and length() functions
typeof(x)
length(x)
#List to Vector
lst1<-c(10:30) 
unlst<-unlist(lst1)
unlst
#str() and summary() functions
str(lst)
summary(lst)
#R Predefined Lists
letters
LETTERS
month.abb
month.name
#lapply() and sapply()
x <- list(a = 1:10, exponent = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
lapply(x,mean)
sapply(x,median)

