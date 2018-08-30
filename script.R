library("ISLR")
library("caTools")
library("car")

set.seed(123)

data()
head(Auto)

sample_size <- floor(0.7*nrow(Auto))

sample_size

seq_len(nrow(Auto))
length(seq_len(nrow(Auto)))

train_ind<-sample(seq_len(nrow(Auto)))

train<-Auto[train_ind,]
test<-Auto[train_ind,]

nrow(Auto)
nrow(train)
nrow(test)

head(train[,1:5])

model1<-lm(mpg~ cylinders+horsepower+weight,train)
summary(model1)

plot(fit)
vif(fit)

predict_mpg = predict(model1,test)

actual = test[,1]
df = data.frame(actual=actual, predicted=predict_mpg,difference=actual-predict_mpg)
head(df)
print(df)

