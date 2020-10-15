# Vector Creation
x<-1:10
x
y<-seq(1,10,by=1)
y
z=c(1,2,3,4,5,6,7,8,9,10)
z
z1=c(1:10)
z1
#1.Concatenation of two vectors
a=c(1:5)
b=c(6:10)
c(a,b)
# 2.Arithmetic Operations
a+b
b-a
a*b
a/b
b%%a
b**a
# 3.Sorting
unsorted<-c(23,34,11,3,67,45)
v <- c("Red","Blue","yellow","violet")
sort(unsorted)
sort(v)
sort(unsorted,decreasing = TRUE)
sort(v,decreasing = TRUE)
#4.legth and typeof functions
typeof(v)
length(unsorted)
#5.accessing vector elements
u<-c(23,34,11,3,67,45)
t <- c("Ram,","prem","hemanth","vinith")
u[3]
t[1:3]
t[-1] 
# 6.modifying vector elements
u<-c(23,34,11,3,67,45)
u
u[3]<-100
u
u[u>30]<-0
u
#7.deleting vector
t <- c("prem","Bilal","yash","paurnami")
t<-NULL
t
# 8.is.vector() function
v <- c(3,2,2)
is.vector(v)
# 9.multiplication by scalar
s <- 3*v
s
# 10.repeating variable no.of times
rep(c(0, 0, 7), times = 4)
rep(c(0, 7), times = c(4,3))
# 11.Some built-in functions
i=c(23,1,5,14,7,34)
sqrt(i)
abs(i)
mean(i)
median(i)
sin(i)
cos(i)
t <- c("prem","Bilal","yash","paurnami")
toupper(t)
#Recycling of vector
a<-c(1,2,4) + c(6,0,9,10,13)
a




