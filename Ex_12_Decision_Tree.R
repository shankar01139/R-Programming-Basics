library(datasets) 
library(caTools) 
library(party) 
library(dplyr) 
library(magrittr) 

readingSkills<-read.csv("D:\\chutti\\SEM - 7\\R Programming\\r_lab\\readingSkills.csv")
readingSkills$nativeSpeaker <- as.factor(readingSkills$nativeSpeaker)
sample_data = sample.split(readingSkills, SplitRatio = 0.8) 
train_data <- subset(readingSkills, sample_data == TRUE) 
test_data <- subset(readingSkills, sample_data == FALSE) 

model<- ctree(nativeSpeaker ~ ., train_data) 
plot(model) 

predict_model<-predict(model, test_data)  

m_at <- table(test_data$nativeSpeaker, predict_model)  
m_at

ac_Test <- sum(diag(m_at)) / sum(m_at) 
print(paste('Accuracy for test is found to be', ac_Test))
