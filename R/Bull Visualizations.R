library(tidyverse)
library(dplyr)
require(ggplot2)
require(ggmap)
require(gganimate)

b1 <- read.csv('data/hourlyBullData2019.csv') %>% filter(BulNum == 1)
b1 <- b1[,-1]
b1$doy <- as.numeric(strftime(b1$ï..Time, format = "%j"))

lat <- rbind(b1[2],b1[2])
lon <- rbind(b1[3],b1[3])
bigcbbox <- make_bbox(lon = lon, lat = lat, f = .1)#from ggmap
bigsq_map <- get_map(location = bigcbbox, maptype = "satellite", source = "google")

p=ggmap(bigsq_map) +            # Map of track with color to represent time of year
  geom_path(data = b1, aes(x = Longitude, y = Latitude, color = doy), size = 0.8) +
  labs(x = " ", y = " ")  +
  theme_minimal() + scale_color_gradientn("DOY", colours = rainbow(7), breaks = c(0, 100, 200, 300, 365)) + ggtitle("Bull 1 2019 Path") +
  geom_point(aes(x=LONGITUDE,y=LATITUDE), data = VictoriaFalls, alpha=.4, color="black",size=3)

p+transition_reveal(b1$doy)



##
Bull1=Bull1[order(Bull1$ï..Time),] #order

n=1:(nrow(Bull1)/4)*4
Bull1a=Bull1[n,]   #selecting only every 4 hours

Bull1a$doy <- as.numeric(strftime(Bull1a$ï..Time, format = "%j"))   #creating variable to just put day of year (jan 1st = 1, jan 2nd = 2, etc...)


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




