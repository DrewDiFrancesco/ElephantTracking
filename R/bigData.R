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

VictoriaFalls=VFZR[c(1:77),c(2,3)]
ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]

data <- d1 %>% full_join(d2) %>% full_join(d3) %>% full_join(d4) %>% full_join(d5) %>% full_join(d6) %>% full_join(d7) %>% full_join(d8) %>% full_join(d9) %>% 
  full_join(d10) %>% full_join(d12) %>% full_join(d13) %>% full_join(d14) %>% full_join(d15) %>% group_by(bulnum)
data$isinCity <- ifelse(data$Distance_to_Victoria_Falls <= 5, 1, 0) 

which(data$isinCity == 1)

max(data$Distance_to_Victoria_Falls[(which(data$isinCity == 1)-1)])

#max(data$Distance_to_Victoria_Falls[(which(data$isinCity == 1)-1])
# africa = world %>% 
#   filter(continent == "Africa", !is.na(iso_a2)) %>% 
#   left_join(worldbank_df, by = "iso_a2") %>% 
#   dplyr::select(name, subregion, gdpPercap, HDI, pop_growth) %>% 
#   st_transform("+proj=aea +lat_1=20 +lat_2=-23 +lat_0=0 +lon_0=25")

data(wrld_simpl)
afr=wrld_simpl[wrld_simpl$REGION==2,]

plot(afr[afr$NAME == 'Zimbabwe',])
points(VictoriaFalls$LONGITUDE,VictoriaFalls$LATITUDE,col='red')
points(ZambeziRiver$LONGITUDE,ZambeziRiver$LATITUDE,col='blue')

ggplot() + 
  ggmap(zim[,1:2])

zim = map_data(map='world',region='Zimbabwe')

mapzim <- get_map(location = c(lon = mean(zim$long), lat = mean(zim$lat)), zoom = 4,
                      maptype = "terrain", scale = 2)
