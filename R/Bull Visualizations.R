library(tidyverse)
library(dplyr)
require(ggplot2)
require(ggmap)
require(gganimate)

#Bull 1 Data

Bull1Apr19 = read.csv("rawData/Bull1/Bull1Apr19.csv")
Bull1May19 = read.csv("rawData/Bull1/Bull1May19.csv")
Bull1Jun19 = read.csv("rawData/Bull1/Bull1Jun19.csv")
Bull1Jul19 = read.csv("rawData/Bull1/Bull1Jul19.csv")
Bull1Aug19 = read.csv("rawData/Bull1/Bull1Aug19.csv")
Bull1Oct19 = read.csv("rawData/Bull1/Bull1Oct19.csv")
Bull1Nov19 = read.csv("rawData/Bull1/Bull1Nov19.csv")
Bull1Dec19 = read.csv("rawData/Bull1/Bull1Dec19.csv")

Bull1=rbind(Bull1May19[c(1,4,5)],Bull1Jun19[c(1,4,5)],Bull1Jul19[c(1,4,5)],Bull1Aug19[c(1,4,5)],Bull1Oct19[c(1,4,5)],Bull1Nov19[c(1,4,5)],Bull1Dec19[c(1,4,5)])

Bull1=Bull1[order(Bull1$ï..Time),] #order

n=1:(nrow(Bull1)/4)*4
Bull1a=Bull1[n,]   #selecting only every 4 hours

Bull1a$doy <- as.numeric(strftime(Bull1a$ï..Time, format = "%j"))   #creating variable to just put day of year (jan 1st = 1, jan 2nd = 2, etc...)


#Bull 2 Data
setwd("C:/RStudio/WorkingDirectory/ElephantTracking/Bull2")

Bull2May19 = read.csv("Bull2.1May19.csv")
Bull2Jun19 = read.csv("Bull2.1Jun19.csv")
Bull2Jul19 = read.csv("Bull2.1Jul19.csv")
Bull2Aug19 = read.csv("Bull2.1Aug19.csv")
Bull2Oct19 = read.csv("Bull2.1Oct19.csv")
Bull2Nov19 = read.csv("Bull2.1Nov19.csv")
Bull2Dec19 = read.csv("Bull2.1Dec19.csv")

Bull2=rbind(Bull2May19[c(1,4,5)],Bull2Jun19[c(1,4,5)],Bull2Jul19[c(1,4,5)],Bull2Aug19[c(1,4,5)],Bull2Oct19[c(1,4,5)],Bull2Nov19[c(1,4,5)],Bull2Dec19[c(1,4,5)])
Bull2=Bull2[order(Bull2$ï..Time),] #order


n=1:(nrow(Bull2)/4)*4
Bull2a=Bull2[n,]  

Bull2a$doy <- as.numeric(strftime(Bull2a$ï..Time, format = "%j")) 


#Bull 3 Data
setwd("C:/RStudio/WorkingDirectory/ElephantTracking/Bull3")

Bull3Apr19 = read.csv("Bull3Apr19.csv")
Bull3May19 = read.csv("Bull3May19.csv")
Bull3Jun19 = read.csv("Bull3Jun19.csv")
Bull3Jul19 = read.csv("Bull3Jul19.csv")
Bull3Aug19 = read.csv("Bull3Aug19.csv")
Bull3Oct19 = read.csv("Bull3Oct19.csv")
Bull3Nov19 = read.csv("Bull3Nov19.csv")
Bull3Dec19 = read.csv("Bull3Dec19.csv")

Bull3=rbind(Bull3May19[c(1,4,5)],Bull3Jun19[c(1,4,5)],Bull3Jul19[c(1,4,5)],Bull3Aug19[c(1,4,5)],Bull3Oct19[c(1,4,5)],Bull3Nov19[c(1,4,5)],Bull3Dec19[c(1,4,5)])
Bull3=Bull3[order(Bull3$ï..Time),] #order


n=1:(nrow(Bull3)/4)*4
Bull3a=Bull3[n,]  

Bull3a$doy <- as.numeric(strftime(Bull3a$ï..Time, format = "%j")) 


#Bull 4 Data
setwd("C:/RStudio/WorkingDirectory/ElephantTracking/Bull4")

Bull4May19 = read.csv("Bull4May19.csv")
Bull4Jun19 = read.csv("Bull4Jun19.csv")
Bull4Jul19 = read.csv("Bull4Jul19.csv")
Bull4Aug19 = read.csv("Bull4Aug19.csv")
Bull4Oct19 = read.csv("Bull4Oct19.csv")
Bull4Nov19 = read.csv("Bull4Nov19.csv")
Bull4Dec19 = read.csv("Bull4Dec19.csv")

Bull4=rbind(Bull4May19[c(1,4,5)],Bull4Jun19[c(1,4,5)],Bull4Jul19[c(1,4,5)],Bull4Aug19[c(1,4,5)],Bull4Oct19[c(1,4,5)],Bull4Nov19[c(1,4,5)],Bull4Dec19[c(1,4,5)])
Bull4=Bull4[order(Bull4$ï..Time),] #order


n=1:(nrow(Bull4)/4)*4
Bull4a=Bull4[n,]  

Bull4a$doy <- as.numeric(strftime(Bull4a$ï..Time, format = "%j")) 


#Bull 5 Data
setwd("C:/RStudio/WorkingDirectory/ElephantTracking/Bull5")

Bull5May19 = read.csv("Bull5May19.csv")
Bull5Jun19 = read.csv("Bull5Jun19.csv")
Bull5Jul19 = read.csv("Bull5Jul19.csv")
Bull5Aug19 = read.csv("Bull5Aug19.csv")
Bull5Oct19 = read.csv("Bull5Oct19.csv")
Bull5Nov19 = read.csv("Bull5Nov19.csv")
Bull5Dec19 = read.csv("Bull5Dec19.csv")

Bull5=rbind(Bull5May19[c(1,4,5)],Bull5Jun19[c(1,4,5)],Bull5Jul19[c(1,4,5)],Bull5Aug19[c(1,4,5)],Bull5Oct19[c(1,4,5)],Bull5Nov19[c(1,4,5)],Bull5Dec19[c(1,4,5)])
Bull5=Bull5[order(Bull5$ï..Time),] #order


n=1:(nrow(Bull5)/4)*4
Bull5a=Bull5[n,]  

Bull5a$doy <- as.numeric(strftime(Bull5a$ï..Time, format = "%j"))


#Bull 6 Data
setwd("C:/RStudio/WorkingDirectory/ElephantTracking/Bull6")

Bull6May19 = read.csv("Bull6May19.csv")
Bull6Jun19 = read.csv("Bull6Jun19.csv")
Bull6Jul19 = read.csv("Bull6Jul19.csv")
Bull6Aug19 = read.csv("Bull6Aug19.csv")
Bull6Oct19 = read.csv("Bull6Oct19.csv")
Bull6Nov19 = read.csv("Bull6Nov19.csv")
Bull6Dec19 = read.csv("Bull6Dec19.csv")

Bull6=rbind(Bull6May19[c(1,4,5)],Bull6Jun19[c(1,4,5)],Bull6Jul19[c(1,4,5)],Bull6Aug19[c(1,4,5)],Bull6Oct19[c(1,4,5)],Bull6Nov19[c(1,4,5)],Bull6Dec19[c(1,4,5)])
Bull6=Bull6[order(Bull6$ï..Time),] #order


n=1:(nrow(Bull6)/4)*4
Bull6a=Bull6[n,]  

Bull6a$doy <- as.numeric(strftime(Bull6a$ï..Time, format = "%j"))



#Combining Datasets
Bull1 <- Bull1a %>% add_column(BulNum = "1")
Bull2 <- Bull2a %>% add_column(BulNum = "2")
Bull3 <- Bull3a %>% add_column(BulNum = "3")
Bull4 <- Bull4a %>% add_column(BulNum = "4")
Bull5 <- Bull5a %>% add_column(BulNum = "5")
Bull6 <- Bull6a %>% add_column(BulNum = "6")


Bull <- rbind(Bull1[c(1,2,3,4,5)],Bull2[c(1,2,3,4,5)],Bull3[c(1,2,3,4,5)],Bull4[c(1,2,3,4,5)],Bull5[c(1,2,3,4,5)],Bull6[c(1,2,3,4,5)])
Bull=Bull[order(Bull$ï..Time),] 


Bullat <- rbind(Bull1a[2],Bull1a[2])
Bullon <- rbind(Bull1a[3],Bull1a[3])
bigcbbox <- make_bbox(lon = Bullon, lat = Bullat, f = .1)#from ggmap
bigsq_map <- get_map(location = bigcbbox, maptype = "satellite", source = "google")

#Bull 1
cbbox1 <- make_bbox(lon = Bullon, lat = Bullat, f = .1)
sq_map1 <- get_map(location = cbbox1, maptype = "satellite", source = "google")

p=ggmap(bigsq_map) +            # Map of track with color to represent time of year
  geom_path(data = Bull1, aes(x = Longitude, y = Latitude, color = doy), size = 0.8) +
  labs(x = " ", y = " ")  +
  theme_minimal() + scale_color_gradientn("DOY", colours = rainbow(7), breaks = c(0, 100, 200, 300, 365)) + ggtitle("Bull 1 2019 Path")

p+transition_reveal(Bull1$doy)

    #Bull 2 
b2cbbox <- make_bbox(lon = Bull2a$Longitude, lat = Bull2a$Latitude, f = .1)#from ggmap
b2sq_map <- get_map(location = b2cbbox, maptype = "satellite", source = "google")
p=ggmap(bigsq_map) +            # Map of track with color to represent time of year
  geom_path(data = Bull2, aes(x = Longitude, y = Latitude, color = doy), size = 0.8) +
  labs(x = " ", y = " ")  +
  theme_minimal() + scale_color_gradientn("DOY", colours = rainbow(7), breaks = c(0, 100, 200, 300, 365))

p+transition_reveal(Bull2$doy)

#Bull 3
b3cbbox <- make_bbox(lon = Bull3a$Longitude, lat = Bull3a$Latitude, f = .1)#from ggmap
b3sq_map <- get_map(location = b3cbbox, maptype = "satellite", source = "google")
p=ggmap(b3sq_map) +            # Map of track with color to represent time of year
  geom_path(data = Bull3, aes(x = Longitude, y = Latitude, color = doy), size = 0.8) +
  labs(x = " ", y = " ")  +
  theme_minimal() + scale_color_gradientn("DOY", colours = rainbow(7), breaks = c(0, 100, 200, 300, 365))

p+transition_reveal(Bull3$doy)

#Bull 4
p=ggmap(bigsq_map) +            # Map of track with color to represent time of year
  geom_path(data = Bull4, aes(x = Longitude, y = Latitude, color = doy), size = 0.8) +
  labs(x = " ", y = " ")  +
  theme_minimal() + scale_color_gradientn("DOY", colours = rainbow(7), breaks = c(0, 100, 200, 300, 365))

p+transition_reveal(Bull4$doy)




