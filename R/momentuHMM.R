library(momentuHMM)
library(dyplr)
library(tidyverse)
library(rgdal)

raw <- read.csv("data/hourlyBullData2019.csv") %>% select(ID = BulNum, time = ï..Time, lon = Longitude, lat = Latitude) %>% filter(ID == 1)

data <- prepData(raw,type="UTM",coordNames=c("lon","lat"))

# # convert times from factors to POSIX
# rawData$time <- as.POSIXct(rawData$time,tz="GMT")
# 
# # project to UTM coordinates using package rgdal
# llcoord <- SpatialPoints(rawData[,3:4],
#                          proj4string=CRS("+proj=longlat +datum=WGS84"))
# utmcoord <- spTransform(llcoord,CRS("+proj=utm +zone=30 ellps=WGS84"))
# 
# # add UTM locations to data frame
# rawData$x <- attr(utmcoord,"coords")[,1]
# rawData$y <- attr(utmcoord,"coords")[,2]
# 
# # fit crawl model
# crwOut <- crawlWrap(obsData=rawData, timeStep="hour",
#                     theta=c(6.855, -0.007), fixPar=c(NA,NA))



