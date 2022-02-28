library(tidyverse)
library(dplyr)

#Bull 1
Bull1JanMar19=read.csv("rawData/Bull1/Bull1JanMar19.txt", header=FALSE)
Bull1JanMar19$V15=gsub("'","")
Bull1Apr19 = read.csv("rawData/Bull1/Bull1Apr19.csv")
Bull1May19 = read.csv("rawData/Bull1/Bull1May19.csv")
Bull1Jun19 = read.csv("rawData/Bull1/Bull1Jun19.csv")
Bull1Jul19 = read.csv("rawData/Bull1/Bull1Jul19.csv")
Bull1Aug19 = read.csv("rawData/Bull1/Bull1Aug19.csv")
Bull1Oct19 = read.csv("rawData/Bull1/Bull1Oct19.csv")
Bull1Nov19 = read.csv("rawData/Bull1/Bull1Nov19.csv")
Bull1Dec19 = read.csv("rawData/Bull1/Bull1Dec19.csv")

#Combine all months
Bull1=rbind(Bull1May19[c(1,4,5)],Bull1Jun19[c(1,4,5)],Bull1Jul19[c(1,4,5)],Bull1Aug19[c(1,4,5)],Bull1Oct19[c(1,4,5)],Bull1Nov19[c(1,4,5)],Bull1Dec19[c(1,4,5)])

#Order in time
Bull1=Bull1[order(Bull1$ï..Time),]

# n=1:(nrow(Bull1)/4)*4
# Bull1a=Bull1[n,]   #selecting only every 4 hours

#Bull1a$doy <- as.numeric(strftime(Bull1a$ï..Time, format = "%j"))   #creating variable to just put day of year (jan 1st = 1, jan 2nd = 2, etc...)


#Bull 2
Bull2May19 = read.csv("rawData/Bull2/Bull2.1May19.csv")
Bull2Jun19 = read.csv("rawData/Bull2/Bull2.1Jun19.csv")
Bull2Jul19 = read.csv("rawData/Bull2/Bull2.1Jul19.csv")
Bull2Aug19 = read.csv("rawData/Bull2/Bull2.1Aug19.csv")
Bull2Oct19 = read.csv("rawData/Bull2/Bull2.1Oct19.csv")
Bull2Nov19 = read.csv("rawData/Bull2/Bull2.1Nov19.csv")
Bull2Dec19 = read.csv("rawData/Bull2/Bull2.1Dec19.csv")

Bull2=rbind(Bull2May19[c(1,4,5)],Bull2Jun19[c(1,4,5)],Bull2Jul19[c(1,4,5)],Bull2Aug19[c(1,4,5)],Bull2Oct19[c(1,4,5)],Bull2Nov19[c(1,4,5)],Bull2Dec19[c(1,4,5)])

Bull2=Bull2[order(Bull2$ï..Time),] 

# n=1:(nrow(Bull2)/4)*4
# Bull2a=Bull2[n,]  

#Bull2a$doy <- as.numeric(strftime(Bull2a$ï..Time, format = "%j")) 


#Bull 3
Bull3Apr19 = read.csv("rawData/Bull3/Bull3Apr19.csv")
Bull3May19 = read.csv("rawData/Bull3/Bull3May19.csv")
Bull3Jun19 = read.csv("rawData/Bull3/Bull3Jun19.csv")
Bull3Jul19 = read.csv("rawData/Bull3/Bull3Jul19.csv")
Bull3Aug19 = read.csv("rawData/Bull3/Bull3Aug19.csv")
Bull3Oct19 = read.csv("rawData/Bull3/Bull3Oct19.csv")
Bull3Nov19 = read.csv("rawData/Bull3/Bull3Nov19.csv")
Bull3Dec19 = read.csv("rawData/Bull3/Bull3Dec19.csv")

Bull3=rbind(Bull3May19[c(1,4,5)],Bull3Jun19[c(1,4,5)],Bull3Jul19[c(1,4,5)],Bull3Aug19[c(1,4,5)],Bull3Oct19[c(1,4,5)],Bull3Nov19[c(1,4,5)],Bull3Dec19[c(1,4,5)])

Bull3=Bull3[order(Bull3$ï..Time),]

# n=1:(nrow(Bull3)/4)*4
# Bull3a=Bull3[n,]  

# Bull3a$doy <- as.numeric(strftime(Bull3a$ï..Time, format = "%j")) 


#Bull 4
Bull4May19 = read.csv("rawData/Bull4/Bull4May19.csv")
Bull4Jun19 = read.csv("rawData/Bull4/Bull4Jun19.csv")
Bull4Jul19 = read.csv("rawData/Bull4/Bull4Jul19.csv")
Bull4Aug19 = read.csv("rawData/Bull4/Bull4Aug19.csv")
Bull4Oct19 = read.csv("rawData/Bull4/Bull4Oct19.csv")
Bull4Nov19 = read.csv("rawData/Bull4/Bull4Nov19.csv")
Bull4Dec19 = read.csv("rawData/Bull4/Bull4Dec19.csv")

Bull4=rbind(Bull4May19[c(1,4,5)],Bull4Jun19[c(1,4,5)],Bull4Jul19[c(1,4,5)],Bull4Aug19[c(1,4,5)],Bull4Oct19[c(1,4,5)],Bull4Nov19[c(1,4,5)],Bull4Dec19[c(1,4,5)])

Bull4=Bull4[order(Bull4$ï..Time),]

# n=1:(nrow(Bull4)/4)*4
# Bull4a=Bull4[n,]  

# Bull4a$doy <- as.numeric(strftime(Bull4a$ï..Time, format = "%j"))


#Bull 5
Bull5May19 = read.csv("rawData/Bull5/Bull5May19.csv")
Bull5Jun19 = read.csv("rawData/Bull5/Bull5Jun19.csv")
Bull5Jul19 = read.csv("rawData/Bull5/Bull5Jul19.csv")
Bull5Aug19 = read.csv("rawData/Bull5/Bull5Aug19.csv")
Bull5Oct19 = read.csv("rawData/Bull5/Bull5Oct19.csv")
Bull5Nov19 = read.csv("rawData/Bull5/Bull5Nov19.csv")
Bull5Dec19 = read.csv("rawData/Bull5/Bull5Dec19.csv")

Bull5=rbind(Bull5May19[c(1,4,5)],Bull5Jun19[c(1,4,5)],Bull5Jul19[c(1,4,5)],Bull5Aug19[c(1,4,5)],Bull5Oct19[c(1,4,5)],Bull5Nov19[c(1,4,5)],Bull5Dec19[c(1,4,5)])

Bull5=Bull5[order(Bull5$ï..Time),]

# n=1:(nrow(Bull5)/4)*4
# Bull5a=Bull5[n,]  

# Bull5a$doy <- as.numeric(strftime(Bull5a$ï..Time, format = "%j"))


#Bull 6 
Bull6May19 = read.csv("rawData/Bull6/Bull6May19.csv")
Bull6Jun19 = read.csv("rawData/Bull6/Bull6Jun19.csv")
Bull6Jul19 = read.csv("rawData/Bull6/Bull6Jul19.csv")
Bull6Aug19 = read.csv("rawData/Bull6/Bull6Aug19.csv")
Bull6Oct19 = read.csv("rawData/Bull6/Bull6Oct19.csv")
Bull6Nov19 = read.csv("rawData/Bull6/Bull6Nov19.csv")
Bull6Dec19 = read.csv("rawData/Bull6/Bull6Dec19.csv")

Bull6=rbind(Bull6May19[c(1,4,5)],Bull6Jun19[c(1,4,5)],Bull6Jul19[c(1,4,5)],Bull6Aug19[c(1,4,5)],Bull6Oct19[c(1,4,5)],Bull6Nov19[c(1,4,5)],Bull6Dec19[c(1,4,5)])

Bull6=Bull6[order(Bull6$ï..Time),] 

# n=1:(nrow(Bull6)/4)*4
# Bull6a=Bull6[n,]  

# Bull6a$doy <- as.numeric(strftime(Bull6a$ï..Time, format = "%j"))


#Bull 7 
Bull7Oct19 = read.csv("rawData/Bull7/Bull7Oct19.csv")
Bull7Nov19 = read.csv("rawData/Bull7/Bull7Nov19.csv")
Bull7Dec19 = read.csv("rawData/Bull7/Bull7Dec19.csv")

Bull7=rbind(Bull7Oct19[c(1,4,5)],Bull7Nov19[c(1,4,5)],Bull7Dec19[c(1,4,5)])

Bull7=Bull7[order(Bull7$ï..Time),] 

# n=1:(nrow(Bull7)/4)*4
# Bull7a=Bull7[n,]  

# Bull7a$doy <- as.numeric(strftime(Bull7a$ï..Time, format = "%j"))


#Bull 8 

Bull8Oct19 = read.csv("rawData/Bull8/Bull8Oct19.csv")
Bull8Nov19 = read.csv("rawData/Bull8/Bull8Nov19.csv")
Bull8Dec19 = read.csv("rawData/Bull8/Bull8Dec19.csv")

Bull8=rbind(Bull8Oct19[c(1,4,5)],Bull8Nov19[c(1,4,5)],Bull8Dec19[c(1,4,5)])

Bull8=Bull8[order(Bull8$ï..Time),] 

# n=1:(nrow(Bull8)/4)*4
# Bull8a=Bull8[n,]  

# Bull8a$doy <- as.numeric(strftime(Bull8a$ï..Time, format = "%j"))


#Bull 9 

Bull9Oct19 = read.csv("rawData/Bull9/Bull9Oct19.csv")
Bull9Nov19 = read.csv("rawData/Bull9/Bull9Nov19.csv")
Bull9Dec19 = read.csv("rawData/Bull9/Bull9Dec19.csv")

Bull9=rbind(Bull9Oct19[c(1,4,5)],Bull9Nov19[c(1,4,5)],Bull9Dec19[c(1,4,5)])

Bull9=Bull9[order(Bull9$ï..Time),] 

# n=1:(nrow(Bull9)/4)*4
# Bull9a=Bull9[n,]  

# Bull9a$doy <- as.numeric(strftime(Bull9a$ï..Time, format = "%j"))


#Bull 10 

Bull10Oct19 = read.csv("rawData/Bull10/Bull10Oct19.csv")
Bull10Nov19 = read.csv("rawData/Bull10/Bull10Nov19.csv")
Bull10Dec19 = read.csv("rawData/Bull10/Bull10Dec19.csv")

Bull10=rbind(Bull10Oct19[c(1,4,5)],Bull10Nov19[c(1,4,5)],Bull10Dec19[c(1,4,5)])

Bull10=Bull10[order(Bull10$ï..Time),] 

# n=1:(nrow(Bull10)/4)*4
# Bull10a=Bull10[n,]  

# Bull10a$doy <- as.numeric(strftime(Bull10a$ï..Time, format = "%j"))


#Bull 12 

Bull12Oct19 = read.csv("rawData/Bull12/Bull12Oct19.csv")
Bull12Nov19 = read.csv("rawData/Bull12/Bull12Nov19.csv")
Bull12Dec19 = read.csv("rawData/Bull12/Bull12Dec19.csv")

Bull12=rbind(Bull12Oct19[c(1,4,5)],Bull12Nov19[c(1,4,5)],Bull12Dec19[c(1,4,5)])

Bull12=Bull12[order(Bull12$ï..Time),] 

# n=1:(nrow(Bull12)/4)*4
# Bull12a=Bull12[n,]  

# Bull12a$doy <- as.numeric(strftime(Bull12a$ï..Time, format = "%j"))


#Bull 13

Bull13Oct19 = read.csv("rawData/Bull13/Bull13Oct19.csv")
Bull13Nov19 = read.csv("rawData/Bull13/Bull13Nov19.csv")
Bull13Dec19 = read.csv("rawData/Bull13/Bull13Dec19.csv")

Bull13=rbind(Bull13Oct19[c(1,4,5)],Bull13Nov19[c(1,4,5)],Bull13Dec19[c(1,4,5)])

Bull13=Bull13[order(Bull13$ï..Time),] 

# n=1:(nrow(Bull13)/4)*4
# Bull13a=Bull13[n,]  

# Bull13a$doy <- as.numeric(strftime(Bull13a$ï..Time, format = "%j"))


#Bull 14

Bull14Nov19 = read.csv("rawData/Bull14/Bull14Nov19.csv")
Bull14Dec19 = read.csv("rawData/Bull14/Bull14Dec19.csv")

Bull14=rbind(Bull14Nov19[c(1,4,5)],Bull14Dec19[c(1,4,5)])

Bull14=Bull14[order(Bull14$ï..Time),] 

# n=1:(nrow(Bull14)/4)*4
# Bull14a=Bull14[n,]  

# Bull14a$doy <- as.numeric(strftime(Bull14a$ï..Time, format = "%j"))


#Combining Dataset (Every Hour)
Bull1 <- Bull1 %>% add_column(BulNum = "1")
Bull2 <- Bull2 %>% add_column(BulNum = "2")
Bull3 <- Bull3 %>% add_column(BulNum = "3")
Bull4 <- Bull4 %>% add_column(BulNum = "4")
Bull5 <- Bull5 %>% add_column(BulNum = "5")
Bull6 <- Bull6 %>% add_column(BulNum = "6")
Bull7 <- Bull7 %>% add_column(BulNum = "7")
Bull8 <- Bull8 %>% add_column(BulNum = "8")
Bull9 <- Bull9 %>% add_column(BulNum = "9")
Bull10 <- Bull10 %>% add_column(BulNum = "10")
Bull12 <- Bull12 %>% add_column(BulNum = "12")
Bull13 <- Bull13 %>% add_column(BulNum = "13")
Bull14 <- Bull14 %>% add_column(BulNum = "14")

#Combining Dataset (Every 4 Hours)
# Bull1 <- Bull1a %>% add_column(BulNum = "1")
# Bull2 <- Bull2a %>% add_column(BulNum = "2")
# Bull3 <- Bull3a %>% add_column(BulNum = "3")
# Bull4 <- Bull4a %>% add_column(BulNum = "4")
# Bull5 <- Bull5a %>% add_column(BulNum = "5")
# Bull6 <- Bull6a %>% add_column(BulNum = "6")
# Bull7 <- Bull7a %>% add_column(BulNum = "7")
# Bull8 <- Bull8a %>% add_column(BulNum = "8")
# Bull9 <- Bull9a %>% add_column(BulNum = "9")
# Bull10 <- Bull10a %>% add_column(BulNum = "10")
# Bull12 <- Bull12a %>% add_column(BulNum = "12")
# Bull13 <- Bull13a %>% add_column(BulNum = "13")
# Bull14 <- Bull14a %>% add_column(BulNum = "14")

#Without doy
Bull <- rbind(Bull1[c(1,2,3,4)],Bull2[c(1,2,3,4)],Bull3[c(1,2,3,4)],Bull4[c(1,2,3,4)],Bull5[c(1,2,3,4)],Bull6[c(1,2,3,4)],Bull7[c(1,2,3,4)],Bull8[c(1,2,3,4)],Bull9[c(1,2,3,4)],Bull10[c(1,2,3,4)],Bull12[c(1,2,3,4)],Bull13[c(1,2,3,4)],Bull14[c(1,2,3,4)])
Bull=Bull[order(Bull$ï..Time),]

# With doy
# Bull <- rbind(Bull1[c(1,2,3,4,5)],Bull2[c(1,2,3,4,5)],Bull3[c(1,2,3,4,5)],Bull4[c(1,2,3,4,5)],Bull5[c(1,2,3,4,5)],Bull6[c(1,2,3,4,5)],Bull7[c(1,2,3,4,5)],Bull8[c(1,2,3,4,5)],Bull9[c(1,2,3,4,5)],Bull10[c(1,2,3,4,5)],Bull12[c(1,2,3,4,5)],Bull13[c(1,2,3,4,5)],Bull14[c(1,2,3,4,5)])
# Bull=Bull[order(Bull$ï..Time),] 

write.csv(Bull,"data/hourlyBullData2019.csv")


