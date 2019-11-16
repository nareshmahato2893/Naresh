excersie
age<-c(18:29)
age
hieght<-c(76.1,77,78.1,78.2,78.8,79.7,79.9,81.1,81.2,81.8,82.8,83.5)
hieght
df<-data.frame(age,hieght)
df
plot(age~hieght)
result<-lm(age~hieght)
summary(result)


example3
#create training n test data
trainingRowIndex<- sample(1:nrow(mtcars),0.8*nrow(mtcars))
trainingData <- mtcars[trainingRowIndex, ] #model training data
testData <- mtcars[-trainingRowIndex, ] #test data

#bivariate analysis
pairs(mtcars)

#correlation


#build the model on training data
lmMod<-lm(mpg ~ cyl+disp+hp+wt, data=trainingData)# build the model

#review the diagnostic measures
summary(lmMod) #model summary

#accuracy:
#since R2 is close to 1, i.e, 0.84, hence model is significant.
#prediction
#predicting values for the test dataset

testData$mpgPred<- predict(lmMod,testData)

#accuracy
#determing the prediction accuracy on test data set using mape.
#Mape (meanAvsolutePercentageError):
#lower its value better is the accuracy model.
#Mape Calculation:
mape <- mean(abs((testData$mpgPred - testData$mpg))/testData$mpg)
mape
