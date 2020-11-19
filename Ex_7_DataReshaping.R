vec1 <- c(1:5)
vec2 <- c(6:10)
mat1 <- matrix(c(1:5),nrow=5,ncol=5)
df1 <- data.frame(matrix(c(1:30),nrow=5))
df2 <- data.frame(matrix(c(31:60),nrow=5))
cbind(vec1,vec2)
rbind(df1,df2)
mat1
t(mat1)

library(tidyr)
month <- month.abb[1:3]
delhi <- sample(seq(-5,47,by=0.01),3,rep=TRUE)
mumbai <-sample(seq(-5,47,by=0.01),3,rep=TRUE)
chennai <-sample(seq(-5,47,by=0.01),3,rep=TRUE)
bangalore <- sample(seq(-5,47,by=0.01),3,rep=TRUE)
kolkata <- sample(seq(-5,47,by=0.01),3,rep=TRUE)
data <- data.frame(month,delhi,mumbai,bangalore,chennai,kolkata)
data

gathered_data <- gather(data,key="city",value="avg.temp",-month)
gathered_data
spread_data <- spread(gathered_data,key="city",value="avg.temp")
spread_data
FirstName <- c("Shreyas","Shankar","Samyu","Paurnami")
LastName <- c("Iyer","Krishna","Shiv","Ravi")
percentage <- c(73,67,81,79)
Stud_Info<- data.frame(FirstName,LastName,percentage)
Stud_Info
unite_stud_info <- unite(Stud_Info,"Name",FirstName,LastName)
unite_stud_info
sep_stud_info <- separate(unite_stud_info,
                           Name,c("FirstName","LastName"))
sep_stud_info
library(reshape2)
library(reshape)
Temp_melt.data <- melt(data, id = c("month"))
print(Temp_melt.data)
Temp_cast.data <- cast(Temp_melt.data,month~variable,mean)
print(Temp_cast.data)
