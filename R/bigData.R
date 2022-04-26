library(tidyverse)
library(caret)
library(lubridate)
library(leaps)
library(MASS)
library(neuralnet)

VFZR=read.csv("data/VictoriaFallsCity-ZambeziRiver.csv")

# reading in victoria falls and Zambezi
VictoriaFalls=VFZR[c(1:77),c(2,3)] 
ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]

# pulling each bull's data
d1 <- read.csv('data/Bull1Dist.csv') %>% mutate(bulnum = 1, age = 22) %>% mutate(julday = yday(as.Date(Date)))
d2 <- read.csv('data/Bull2Dist.csv') %>% mutate(bulnum = 2, age = 34) %>% mutate(julday = yday(as.Date(Date)))
d3 <- read.csv('data/Bull3Dist.csv') %>% mutate(bulnum = 3, age = 29) %>% mutate(julday = yday(as.Date(Date)))
d4 <- read.csv('data/Bull4Dist.csv') %>% mutate(bulnum = 4, age = 24) %>% mutate(julday = yday(as.Date(Date)))
d5 <- read.csv('data/Bull5Dist.csv') %>% mutate(bulnum = 5, age = 30) %>% mutate(julday = yday(as.Date(Date)))
d6 <- read.csv('data/Bull6Dist.csv') %>% mutate(bulnum = 6, age = 33) %>% mutate(julday = yday(as.Date(Date)))
d7 <- read.csv('data/Bull7Dist.csv') %>% mutate(bulnum = 7, age = 39) %>% mutate(julday = yday(as.Date(Date)))
d8 <- read.csv('data/Bull8Dist.csv') %>% mutate(bulnum = 8, age = 29) %>% mutate(julday = yday(as.Date(Date)))
d9 <- read.csv('data/Bull9Dist.csv') %>% mutate(bulnum = 9, age = 40) %>% mutate(julday = yday(as.Date(Date)))
d10 <- read.csv('data/Bull10Dist.csv') %>% mutate(bulnum = 10, age = 47) %>% mutate(julday = yday(as.Date(Date)))
d12 <- read.csv('data/Bull12Dist.csv') %>% mutate(bulnum = 12, age = 34) %>% mutate(julday = yday(as.Date(Date)))
d13 <- read.csv('data/Bull13Dist.csv') %>% mutate(bulnum = 13, age = 37) %>% mutate(julday = yday(as.Date(Date)))
d14 <- read.csv('data/Bull14Dist.csv') %>% mutate(bulnum = 14, age = 39) %>% mutate(julday = yday(as.Date(Date)))
d15 <- read.csv('data/Bull15Dist.csv') %>% mutate(bulnum = 15, age = 34) %>% mutate(julday = yday(as.Date(Date)))

# full joining the distance data
data <- d1[,-1] %>% full_join(d2[,-1]) %>% full_join(d3[,-1]) %>% full_join(d4[,-1]) %>% full_join(d5[,-1]) %>% full_join(d6[,-1]) %>% full_join(d7[,-1]) %>% full_join(d8[,-1]) %>% full_join(d9[,-1]) %>% 
  full_join(d10[,-1]) %>% full_join(d12[,-1]) %>% full_join(d13[,-1]) %>% full_join(d14[,-1]) %>% full_join(d15[,-1]) %>% group_by(bulnum)
data$inCity <- ifelse(data$Distance_to_Victoria_Falls <= 5, 1, 0) 

# remove leap year data
data <- data[-which(data[1] == "2020-02-29"),]

# creating number of bulls nearby indicator
data$numBullsNear <- 0
for(i in 1:nrow(data)) {
  if(!is.na(data$Distance_to_Bull_1[i])) {
    if(data$Distance_to_Bull_1[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_1[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  } 
  if(!is.na(data$Distance_to_Bull_2[i])) {
    if(data$Distance_to_Bull_2[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_2[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_3[i])) {
    if(data$Distance_to_Bull_3[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_3[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_4[i])) {
    if(data$Distance_to_Bull_4[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_4[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_5[i])) {
    if(data$Distance_to_Bull_5[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_5[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_6[i])) {
    if(data$Distance_to_Bull_6[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_6[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_7[i])) {
    if(data$Distance_to_Bull_7[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_7[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_8[i])) {
    if(data$Distance_to_Bull_8[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_8[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_9[i])) {
    if(data$Distance_to_Bull_9[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_9[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_10[i])) {
    if(data$Distance_to_Bull_10[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_10[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_12[i])) {
    if(data$Distance_to_Bull_12[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_12[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_13[i])) {
    if(data$Distance_to_Bull_13[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_13[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_14[i])) {
    if(data$Distance_to_Bull_14[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_14[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_15[i])) {
    if(data$Distance_to_Bull_15[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_15[i] < 1) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
}

# In city tomorrow indicator

data$inCityTmrw = 0
for(i in 2:nrow(data)) {
  if(!is.na(data$inCity[(i-1)]) & data$inCity[(i-1)] ==1) {
    data$inCityTmrw[i] = 1
  }  
}

# write.csv(data,"data/bData.csv")

# Creating a linear model

model <- na.omit(data[,16:24])

training.samples <- model$inCityTmrw %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data  <- model[training.samples, ]
test.data <- model[-training.samples, ]

#fitting a linear model:
elephantmodel = lm(inCityTmrw ~ Distance_to_Zambezi_River + Circle + age + julday + numBullsNear , data = train.data)

predictions <- predict(elephantmodel,test.data)

# RMSE
RMSE(predictions, test.data$inCityTmrw)

# R-Square
R2(predictions, test.data$inCityTmrw)

# summary of our model
summary(elephantmodel)


# GLM
elephantmodel = glm(inCityTmrw ~ Distance_to_Zambezi_River + Circle  + age + julday + numBullsNear , data = train.data, family = binomial(link='logit'))

predictions <- predict(elephantmodel,test.data)

step.model <- stepAIC(elephantmodel, direction = "both", 
                      trace = FALSE)


summary(elephantmodel)

  # Prediction Accuracy for GLM
test.data$model_prob <- predict(elephantmodel,test.data,type="response")

test.data <- test.data %>% mutate(model_pred = 1*(model_prob > .5) + 0)
test.data <- test.data %>% mutate(accuracy = 1*(model_pred == inCityTmrw))

sum(test.data$accuracy)/nrow(test.data)


# Piece wise selection
models <- regsubsets(inCityTmrw ~ Distance_to_Zambezi_River + Circle  + age + julday + numBullsNear, data = train.data, nvmax = 5,
                     method = "seqrep")
summary(models)




# https://www.datacamp.com/community/tutorials/neural-network-models-r

# Neural Net
nn <- neuralnet(inCityTmrw~Distance_to_Zambezi_River+Circle+age+julday+numBullsNear,data=train.data, hidden=3,act.fct = "logistic",
             linear.output = FALSE)
plot(nn)

# Assessing accuracy with test data
test <- test.data[,-9]

p <- compute(nn,test)
prob <- p$net.result
pred <- ifelse(prob>0.5, 1, 0)

z <- pred == test.data$inCityTmrw
acc <- 0

for(i in 1:nrow(z)) {
  if(z[i] == TRUE) {
    acc = acc + 1
  }
}

# accuracy when used to predict the test data
acc/nrow(z)


#using stargazer package to make better visualizations:
library(stargazer)
stargazer(elephantmodel, title = "Regression Results") #this creates a latex table

#creating visualizations for residuals of elephantmodel
library(car)
durbinWatsonTest(elephantmodel)
#stargazer(durbinWatsonTest(elephantmodel))

tab <- matrix(c(1, 0.6877949, 0.6240133, 0), ncol=4, byrow=TRUE)
colnames(tab) <- c('Lag','Autocorrelation','D-W Statistic', 'p-value')
rownames(tab) <- c('rowName1','rowName2','rowName3')
tab <- as.table(tab)

tab

plot(elephantmodel)
#binned plot
library(arm)
binnedplot(fitted(elephantmodel), 
           residuals(elephantmodel, type = "response"), 
           nclass = NULL, 
           xlab = "Expected Values", 
           ylab = "Average residual", 
           main = "Binned residual plot", 
           cex.pts = 0.8, 
           col.pts = 1, 
           col.int = "gray")

residsvector = elephantmodel$residuals
hist(residsvector)

#attempt this holsem model for our final report
library(generalhoslem)
hoslem.test(elephantmodel)

library(ResourceSelection)
hoslem.test(data$inCity, elephantmodel$y)

elephantmodel$coefficients

