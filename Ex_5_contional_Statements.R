#Simple if
data=34
if(is.numeric(data)){
  print("It is a Numeric Value....")
}
#if...else
library(svDialogs)
age<- dlgInput("Enter Your Age : ",default="0")$res
if(age >= 18){
  dlg_message("You are Eligible To Vote...")$res
}else{
  dlg_message("You  Not are Eligible To Vote...")$res
}
#if..else..if
if(file.exists("C:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")){
  print("input.csv file Exist On the c-Directory...")
}else if(file.exists("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")){
  print("input.csv file Exist On the D-Directory...")
}else if(file.exists("E:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")){
  print("input.csv file Exist On the E-Directory...")
}else{
  print("input.csv file Doesn`t Exist....")
}
#switch
num1 =23
num2 =45
print("Performing Random Mathermatical Operation With Switch")
task<-c("1.Addition","2.Subtraction","3.Division","4.Multiplication","5.Modulus","6.Exponent")
cat(task,sep="\n")
op<-c(1:6)
z<-sample(op,1)
result <-switch( 
  z, 
  "1"= cat("Addition : ", num1 + num2), 
  "2"= cat("Subtraction : ", num1 - num2), 
  "3"= cat("Division : ", num1 / num2), 
  "4"= cat("Multiplication : ", num1 * num2), 
  "5"= cat("Modulus : ", num1 %% num2), 
  "6"= cat("Exponent : ", num1 ^ num2) 
) 
#for loop
library(svDialogs)
wrd<- dlgInput("Enter a String : ",default="")$res
letter<-dlgInput("Choose Letter :")$res
count=0
for(char in wrd){
    if (char == letter){
      count+1
    }
}
sprintf("The String includes %i no.of %s",count,letter)