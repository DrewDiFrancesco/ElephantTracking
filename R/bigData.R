library(tidyverse)
library(maps)
library(ggmap)
library(geosphere)

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

VFZR=read.csv("data/VictoriaFallsCity-ZambeziRiver.csv")

VictoriaFalls=VFZR[c(1:77),c(2,3)] 

maxCircle <- 0
for(i in 1:nrow(VictoriaFalls)) {
  dist <- distm(c(VictoriaFalls$LONGITUDE[i],VictoriaFalls$LATITUDE[i]),c(25.825,-17.35),fun=distHaversine)
  if(dist > maxCircle) {
    maxCircle = dist
  }
}

ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]

data <- d1 %>% full_join(d2) %>% full_join(d3) %>% full_join(d4) %>% full_join(d5) %>% full_join(d6) %>% full_join(d7) %>% full_join(d8) %>% full_join(d9) %>% 
  full_join(d10) %>% full_join(d12) %>% full_join(d13) %>% full_join(d14) %>% full_join(d15) %>% group_by(bulnum)
data$isinCity <- ifelse(data$Distance_to_Victoria_Falls <= 5, 1, 0) 

which(data$isinCity == 1)

max(data$Distance_to_Victoria_Falls[(which(data$isinCity == 1)-1)])


