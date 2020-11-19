#with select.list() method
i<-select.list(c("Mean","Median","Standard Deviation","Variance"))
data<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")
if(i == "Mean"){
  print(mean(data$mark))
}else if(i == "Median"){
  print(median(data$mark))
}else if(i == "Standard Deviation"){
  print(sd(data$mark))
}else if(i == "Variance"){
  print(var(data$mark))
}else{
  print("Select Appropriate Value/Operation")
}

#with menu() method
data<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\input.csv")
operation <- c("Mean","Median","Standard Deviation","Variance")
task <- c("mean(data$mark)","median(data$mark)","sd(data$mark)","var(data$mark)")
i <- menu(operation, graphics=TRUE, title="Choose Operation")
if(i == 1){
  print(mean(data$mark))
}else if(i == 2){
  print(median(data$mark))
}else if(i == 3){
  print(sd(data$mark))
}else if(i == 4){
  print(var(data$mark))
}else{
  print("Select Appropriate Value/Operation")
}
