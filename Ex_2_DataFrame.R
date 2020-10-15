#data Frame Creation
employees<- data.frame(
  employee_id = c (1:5), 
  employee_name = c("Ragu","Ram","Rajesh","Vinith","sarath"),
  salary = c(23500,41000,61100,17290,18430), 
  joining_date = as.Date(c("2019-01-01", "2020-09-23", "2018-11-15", "2019-05-11","2020-03-27"))
)
#from Vectors
print(emp.data) 
Name = c("shankar", "sathish", "prem")
Year= c("First", "Second", "Second") 
Grade= c('A','B','B') 
Age=c(23,34,22)
df = data.frame(Name, Year,Grade,Age) 
print(df) 
#From CSV file
newDF = read.csv("D:\\chutti\\SEM - 7\\r_lab\\stud.csv")
newDF
#Accessing Data Frame Elements
df[1,2]
df[,1:2]
df[1:2,]
res<-data.frame(emp.data$employee_name,emp.data$salary)
res
#With Subset() function
Df1 = subset(df, Name =="sathish"|Age>30)
Df1
#Updating Data Frame Element
df[1,2]<-"1st_Year"
df
#using mutate() function
library(dplyr)
dataframe = mutate(df, log_Age = log(Age))  
emp.data$dept <- c("IT","Developer","IT","HR","Finance")
emp.data
#Data Frame Functions
str(df)
summary(emp.data)
ncol(Df1)
nrow(df)
rbind(df,Df1)
cbind(Df1,df)
head(df,2)
tail(Df1,3)


