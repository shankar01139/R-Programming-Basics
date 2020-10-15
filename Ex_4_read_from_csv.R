#readind data from notepad csv file
a<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")
a
ab<-read.csv2("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\input_copy.csv")
ab
#reading data from excel csv file
b<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\stud.csv")
b
#reading data from hyperlink
df <- read.csv("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test.csv",header = FALSE, sep = ",")
df
f <-read.delim2("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test_delim.txt", sep="$")
f

#to check if it a dataframe or not
is.data.frame(a)
pass<-subset(a,grade == 'pass')
pass
p<-subset(a,grade == 'pass'& year == 3)
p
r <- subset(a, as.Date(DOB) > as.Date("2000-01-01"))
r
#write into csv
write.csv(a,"stud.csv")
v<-read.csv(file="stud.csv")
v