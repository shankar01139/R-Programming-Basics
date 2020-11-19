# Loading package 
library(e1071) 
gf <- read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\golf-dataset.csv")
gf$PlayGolf<- as.factor(gf$PlayGolf)
# Splitting data into train 
# and test data 
train_cl <- gf[c(1:14),] 
test_cl <- gf[15,]
# Fitting Naive Bayes Model  
# to training dataset 
classifier_cl <- naiveBayes(PlayGolf ~ ., data = train_cl) 
classifier_cl 
# Predicting on test data' 
y_pred <- predict(classifier_cl, newdata = test_cl) 
y_pred
# Confusion Matrix 
cm <- table(test_cl$PlayGolf, y_pred) 
cm
