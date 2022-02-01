#credit website: https://blog.exploratory.io/calculating-distances-between-two-geo-coded-locations-358e65fcafae
#NOTE: I CHANGE "list_extract" to "list.extract()"
library(geosphere)
library(rlist)
get_geo_distance = function(long1, lat1, long2, lat2, units = "miles") {
  loadNamespace("purrr")
  loadNamespace("geosphere")
  longlat1 = purrr::map2(long1, lat1, function(x,y) c(x,y))
  longlat2 = purrr::map2(long2, lat2, function(x,y) c(x,y))
  distance_list = purrr::map2(longlat1, longlat2, function(x,y) geosphere::distHaversine(x, y))
  distance_m = list.extract(distance_list, position = 1)
  if (units == "km") {
    distance = distance_m / 1000.0;
  }
  else if (units == "miles") {
    distance = distance_m / 1609.344
  }
  else {
    distance = distance_m
    # This will return in meter as same way as distHaversine function. 
  }
  distance
}


#distance between 2 and 12 for 2021 using first available timestamp for each month
#2 is always first and 12 is always second
jandist = get_geo_distance(25.72558, -18.29292, 25.69680, -18.30010, units = "miles")
febdist = get_geo_distance(25.77573, -18.27220, 25.69727, -18.09995, units = "miles")
marchdist = get_geo_distance(25.93305, -18.23715, 25.73633, -18.07080, units = "miles")
aprdist = get_geo_distance(25.83100, -18.09742, 25.79250, -17.95945, units = "miles")
jandist
febdist
marchdist
aprdist


df <- data.frame(dist = c(1.954252,12.98244,17.30848,9.873741),
                 month = c("January", "February", "March", "April"))
View(df)
library(ggplot2)

p<-ggplot(data=df, aes(x=dist, y=month)) +
  geom_bar(stat="identity") +
  ggtitle("Distance Between Bull 2 and 12 During Jan-April 2021")
p
p + coord_flip()









