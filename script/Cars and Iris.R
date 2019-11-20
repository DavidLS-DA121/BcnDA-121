install.packages(readr)
library(readr)
IrisDataset <- read.csv("C:/Users/david/Documents/Ubiqum/R Tutorial Data/R Tutorial Data Sets/iris.csv")
#had to introduce the file path and replace the \ for /
attributes(IrisDataset)
summary(IrisDataset) 
#There was the I of I-ris missing
str(IrisDataset)
#Had to remove the extra s at the end of IrisDatasets
names(IrisDataset)
hist(IrisDataset$Species)
#Before using HIST, the value has to be converted into numerical
IrisDataset$Species<- as.numeric(IrisDataset$Species) 
#Line 11 worked after running 13
plot(IrisDataset$Sepal.Length)
#) was missing
qqnorm(IrisDataset$Sepal.Length)
#Needs to specify a variable
length(IrisDataset)
length(IrisDataset$Species)
set.seed(123)
trainSize <- round(nrow(IrisDataset) * 0.8)
#changed the size to 0.8
testSize <- nrow(IrisDataset) - trainSize
#Replaced trainSet for TrainSize
trainSize
testSize
training_indices<-sample(seq_len(nrow(IrisDataset)),size =trainSize)
#Step above missing from plan of attack
trainSet<-IrisDataset[training_indices,]
testSet<-IrisDataset[-training_indices,] 
LinearModel <- lm(IrisDataset$Petal.Width~IrisDataset$Petal.Length,trainSet)
#Replaced testingSet for TestSet
summary(LinearModel)
nrow(testSet)
prediction<-predict(LinearModel,testSet)
#comma was missing
prediction
error <- testSet$Sepal.Width - prediction
plot(testSet$Sepal.Width,error)
length(testSet$Petal.Width)
length(prediction)
plot(error,col=("red"),main = "Error")

     