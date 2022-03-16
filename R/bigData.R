library(tidyverse)

d1 <- read.csv('data/Bull1Dist.csv') %>% mutate(bulnum = 1)
d2 <- read.csv('data/Bull2Dist.csv') %>% mutate(bulnum = 2)
d3 <- read.csv('data/Bull3Dist.csv') %>% mutate(bulnum = 3)
d4 <- read.csv('data/Bull4Dist.csv') %>% mutate(bulnum = 4)
d5 <- read.csv('data/Bull5Dist.csv') %>% mutate(bulnum = 5)
d6 <- read.csv('data/Bull6Dist.csv') %>% mutate(bulnum = 6)
d7 <- read.csv('data/Bull7Dist.csv') %>% mutate(bulnum = 7)
d8 <- read.csv('data/Bull8Dist.csv') %>% mutate(bulnum = 8)
d9 <- read.csv('data/Bull9Dist.csv') %>% mutate(bulnum = 9)
d10 <- read.csv('data/Bull10Dist.csv') %>% mutate(bulnum = 10)
d12 <- read.csv('data/Bull12Dist.csv') %>% mutate(bulnum = 12)
d13 <- read.csv('data/Bull13Dist.csv') %>% mutate(bulnum = 13)
d14 <- read.csv('data/Bull14Dist.csv') %>% mutate(bulnum = 14)
d15 <- read.csv('data/Bull15Dist.csv') %>% mutate(bulnum = 15)

VFZR=read.csv("data/VictoriaFallsCity-ZambeziRiver.csv")
ZambeziRiver=VFZR[c(1:77),c(2,3)]
VictoriaFalls=VFZR[c(78:nrow(VFZR)),c(2,3)]

data <- d1 %>% full_join(d2) %>% full_join(d3) %>% full_join(d4) %>% full_join(d5) %>% full_join(d6) %>% full_join(d7) %>% full_join(d8) %>% full_join(d9) %>% 
  full_join(d10) %>% full_join(d12) %>% full_join(d13) %>% full_join(d14) %>% full_join(d15) 
data$isinCity <- NA

for(i in 1:length(data)) {
  if (data$Distance_to_Victoria_Falls[i] <= 5) {
    data$isinCity[i] = 1
  }
  else if (data$Distance_to_Victoria_Falls[i] > 5) {
    data$isinCity[i] = 0
  }
  else if (is.na(data$Distance_to_Victoria_Falls[i])) {
    data$isinCity[i] = 0
  }
}
