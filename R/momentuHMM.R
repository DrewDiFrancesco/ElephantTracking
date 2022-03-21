library(momentuHMM)
library(dyplr)
library(tidyverse)
library(rgdal)

raw <- read.csv("data/hourlyBullData2019.csv") %>% select(ID = BulNum, time = ï..Time, lon = Longitude, lat = Latitude) %>% group_by(ID) 

# convert times from factors to POSIX
raw$time <- as.POSIXct(raw$time,tz="GMT") 

# arrange by bull number
raw <- raw %>% arrange(raw,by_group=TRUE) 

# project to UTM coordinates using package rgdal
llcoord <- SpatialPoints(raw[,3:4],
                         proj4string=CRS("+proj=longlat +datum=WGS84"))
utmcoord <- spTransform(llcoord,CRS("+proj=utm +zone=30 ellps=WGS84"))

# add UTM locations to data frame
raw$x <- attr(utmcoord,"coords")[,1]
raw$y <- attr(utmcoord,"coords")[,2]

# fit crawl model
crwOut <- crawlWrap(obsData=raw, timeStep="hour",
                    theta=c(6.855, -0.007), fixPar=c(NA,NA))

# create momentuHMMData object from crwData object
elephantData <- prepData(data=crwOut)

# add cosinor covariate based on hour of day
elephantData$hour <- as.integer(strftime(elephantData$time, format = "%H", tz="GMT"))

acf(elephantData$step[!is.na(elephantData$step)],lag.max=300)

plot(elephantData)

# label states
stateNames <- c("encamped","exploratory")

# distributions for observation processes
dist = list(step = "gamma", angle = "wrpcauchy")

# initial parameters
Par0_m1 <- list(step=c(100,3000,300,1500,0,1),angle=c(0.3,0.7))

# fit model
m1 <- fitHMM(data = elephantData, nbStates = 2, dist = dist, Par0 = Par0_m1,
             estAngleMean = list(angle=FALSE), stateNames = stateNames)

states <- viterbi(m1)

table(states)/nrow(elephantData)

plot(m1, plotCI = TRUE, covs = data.frame(hour=12))

pr <- pseudoRes(m1)

acf(pr$stepRes[!is.na(pr$stepRes)],lag.max = 300)
