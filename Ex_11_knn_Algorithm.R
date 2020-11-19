knn1<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\Knn.csv")
knn1
knn1$Obesity<-as.factor(knn1$Obesity)
str(knn1)
summary(knn1)
normalize<-function(x){
  +return(  (x-min(x))/(max(x) - min(x)) )
}
knn2<-as.data.frame(lapply(knn1[,c(1:3)],normalize))
str(knn2)
summary(knn2)
knn_train<-knn2[1:6,]
knn_test<-knn2[7,]
knn_train_target<-knn1[1:6,4]
knn_test_target<-knn1[7,4]
require(class)
m1 <- knn(train=knn_train, test=knn_test, cl=knn_train_target,k=1)
m1
data=table(m1)
data
