library(tidyverse)

VFZR=read.csv("data/VictoriaFallsCity-ZambeziRiver.csv")

# reading in victoria falls and Zambezi
VictoriaFalls=VFZR[c(1:77),c(2,3)] 
ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]

# pulling each bull's data
d1 <- read.csv('data/Bull1Dist.csv') %>% mutate(bulnum = 1, age = 22)
d2 <- read.csv('data/Bull2Dist.csv') %>% mutate(bulnum = 2, age = 34)
d3 <- read.csv('data/Bull3Dist.csv') %>% mutate(bulnum = 3, age = 29)
d4 <- read.csv('data/Bull4Dist.csv') %>% mutate(bulnum = 4, age = 24)
d5 <- read.csv('data/Bull5Dist.csv') %>% mutate(bulnum = 5, age = 30)
d6 <- read.csv('data/Bull6Dist.csv') %>% mutate(bulnum = 6, age = 33)
d7 <- read.csv('data/Bull7Dist.csv') %>% mutate(bulnum = 7, age = 39)
d8 <- read.csv('data/Bull8Dist.csv') %>% mutate(bulnum = 8, age = 29)
d9 <- read.csv('data/Bull9Dist.csv') %>% mutate(bulnum = 9, age = 40)
d10 <- read.csv('data/Bull10Dist.csv') %>% mutate(bulnum = 10, age = 47)
d12 <- read.csv('data/Bull12Dist.csv') %>% mutate(bulnum = 12, age = 34)
d13 <- read.csv('data/Bull13Dist.csv') %>% mutate(bulnum = 13, age = 37)
d14 <- read.csv('data/Bull14Dist.csv') %>% mutate(bulnum = 14, age = 39)
d15 <- read.csv('data/Bull15Dist.csv') %>% mutate(bulnum = 15, age = 34)

# full joining the distance data
data <- d1 %>% full_join(d2) %>% full_join(d3) %>% full_join(d4) %>% full_join(d5) %>% full_join(d6) %>% full_join(d7) %>% full_join(d8) %>% full_join(d9) %>% 
  full_join(d10) %>% full_join(d12) %>% full_join(d13) %>% full_join(d14) %>% full_join(d15) %>% group_by(bulnum)
data$isinCity <- ifelse(data$Distance_to_Victoria_Falls <= 5, 1, 0) 

# creating number of bulls nearby indicator
data$numBullsNear <- 0
for(i in 1:nrow(data)) {
  if(!is.na(data$Distance_to_Bull_1[i])) {
    if(data$Distance_to_Bull_1[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_1[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  } 
  if(!is.na(data$Distance_to_Bull_2[i])) {
    if(data$Distance_to_Bull_2[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_2[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_3[i])) {
    if(data$Distance_to_Bull_3[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_3[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_4[i])) {
    if(data$Distance_to_Bull_4[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_4[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_5[i])) {
    if(data$Distance_to_Bull_5[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_5[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_6[i])) {
    if(data$Distance_to_Bull_6[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_6[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_7[i])) {
    if(data$Distance_to_Bull_7[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_7[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_8[i])) {
    if(data$Distance_to_Bull_8[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_8[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_9[i])) {
    if(data$Distance_to_Bull_9[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_9[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_10[i])) {
    if(data$Distance_to_Bull_10[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_10[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_12[i])) {
    if(data$Distance_to_Bull_12[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_12[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_13[i])) {
    if(data$Distance_to_Bull_13[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_13[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_14[i])) {
    if(data$Distance_to_Bull_14[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_14[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
  if(!is.na(data$Distance_to_Bull_15[i])) {
    if(data$Distance_to_Bull_15[i] == 0) {
      data$numBullsNear[i] = data$numBullsNear[i] + 0
    }
    else if(data$Distance_to_Bull_15[i] < 2) {
      data$numBullsNear[i] = data$numBullsNear[i] + 1
    }
  }
}



