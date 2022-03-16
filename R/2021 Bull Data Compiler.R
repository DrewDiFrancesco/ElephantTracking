library(tidyverse)
library(dplyr)

#Bull 2
Bull2Jan21 = read.csv("Bull2.1Jan21.csv")
Bull2Feb21 = read.csv("Bull2.1Feb21.csv")
Bull2Mar21 = read.csv("Bull2.1Mar21.csv")
Bull2Apr21 = read.csv("Bull2.1Apr21.csv")


Bull221=rbind(Bull2Jan21[c(1,4,5)],Bull2Feb21[c(1,4,5)],Bull2Mar21[c(1,4,5)],Bull2Apr21[c(1,4,5)])

Bull221=Bull221[order(Bull221$Time),] 

#selecting only every 4 hours
# n=1:(nrow(Bull221)/4)*4
# Bull221a=Bull221[n,] 

# Bull221a$doy <- as.numeric(strftime(Bull221a$Time, format = "%j"))   #creating variable to just put day of year (jan 1st = 1, jan 2nd = 2, etc...)


#View(Bull221a) #checking to make sure my file was correct

#********************************************************************
# View(Bull221a) #this is completed Bull 2 data for 2021
#********************************************************************


#Bull 6
Bull6Jan21 = read.csv("Bull6Jan21.csv")
Bull6Feb21 = read.csv("Bull6Feb21.csv")
Bull6Mar21 = read.csv("Bull6Mar21.csv")


Bull621=rbind(Bull6Jan21[c(1,4,5)],Bull6Feb21[c(1,4,5)],Bull6Mar21[c(1,4,5)])

#ordering in time
Bull621=Bull621[order(Bull621$Time),]


# n=1:(nrow(Bull621)/4)*4
# Bull621a=Bull621[n,]  
# 
# Bull621a$doy <- as.numeric(strftime(Bull621a$Time, format = "%j"))   #creating variable to just put day of year (jan 1st = 1, jan 2nd = 2, etc...)


#***************************************************************
# View(Bull621a) #completed bull 6 2021
#***************************************************************

#Bull3a$doy <- as.numeric(strftime(Bull3a$?..Time, format = "%j")) 


#Bull 7
Bull7Jan21 = read.csv("Bull7Jan21.csv")
Bull7Feb21 = read.csv("Bull7Feb21.csv")


Bull721=rbind(Bull7Jan21[c(1,4,5)],Bull7Feb21[c(1,4,5)])

Bull721=Bull721[order(Bull721$Time),]

# n=1:(nrow(Bull721)/4)*4
# Bull721a=Bull721[n,]  
# 
# Bull721a$doy <- as.numeric(strftime(Bull721a$Time, format = "%j"))

#********************************************************
# View(Bull721a) #completed Bull 7 2021
#********************************************************

#CONTINUE FROM HERE ON 1/28/2022
#Bull 8
Bull8Jan21 = read.csv("Bull8Jan21.csv")
Bull8Feb21 = read.csv("Bull8Feb21.csv")
Bull8Mar21 = read.csv("Bull8Mar21.csv")
Bull8Apr21 = read.csv("Bull8Apr21.csv")
Bull8June21 = read.csv("Bull8June21.csv")
#Bull8Sept21 = read.csv("Bull8Sept21.csv") SEPTEMBER WAS NOT INCLUDED AS I CANNOT CONVERT - OOPS


Bull821=rbind(Bull8Jan21[c(1,4,5)],Bull8Feb21[c(1,4,5)],Bull8Mar21[c(1,4,5)],Bull8Apr21[c(1,4,5)],Bull8June21[c(1,4,5)])

Bull821=Bull821[order(Bull821$Time),]

# n=1:(nrow(Bull821)/4)*4
# Bull821a=Bull821[n,]  
# 
# Bull821a$doy <- as.numeric(strftime(Bull821a$Time, format = "%j"))

#**********************************************
# View(Bull821a) #completed Bull 8 2021
#**********************************************


#Bull 9
Bull9Jan21 = read.csv("Bull 9 January 2021.csv")
Bull9Feb21 = read.csv("Bull 9 February 2021.csv")


Bull921=rbind(Bull9Jan21[c(1,4,5)],Bull9Feb21[c(1,4,5)])

Bull921=Bull921[order(Bull921$Time),] 

# n=1:(nrow(Bull921)/4)*4
# Bull921a=Bull921[n,]  
# 
# Bull921a$doy <- as.numeric(strftime(Bull921a$Time, format = "%j"))
# 
# #**********************************************
# View(Bull921a) #completed Bull 9 2021
#**********************************************

#Bull 10
Bull10Jan21 = read.csv("Bull 10 January 2021.csv")
Bull10Feb21 = read.csv("Bull 10 February 2021.csv")


Bull1021=rbind(Bull10Jan21[c(1,4,5)],Bull10Feb21[c(1,4,5)])

Bull1021=Bull1021[order(Bull1021$Time),] 

# n=1:(nrow(Bull1021)/4)*4
# Bull1021a=Bull1021[n,]  
# 
# Bull1021a$doy <- as.numeric(strftime(Bull1021a$Time, format = "%j"))
# 
# #**********************************************
# View(Bull1021a) #completed Bull 10 2021
#**********************************************


#Bull 12
Bull12Jan21 = read.csv("Bull 12 January 2021.csv")
Bull12Feb21 = read.csv("Bull 12 February 2021.csv")
Bull12Mar21 = read.csv("Bull 12 March 2021.csv")
Bull12Apr21 = read.csv("Bull 12 April 2021.csv")
Bull12June21 = read.csv("Bull 12 June 2021.csv")
#Bull12Sept21 = read.csv("Bull 12 September 2021.csv") #COULD NOT CONVERT SEPTEMBER


Bull1221=rbind(Bull12Jan21[c(1,4,5)],Bull12Feb21[c(1,4,5)],Bull12Mar21[c(1,4,5)], Bull12Apr21[c(1,4,5)], Bull12June21[c(1,4,5)])

Bull1221=Bull1221[order(Bull1221$Time),] 

# n=1:(nrow(Bull1221)/4)*4
# Bull1221a=Bull1221[n,]  
# 
# Bull1221a$doy <- as.numeric(strftime(Bull1221a$Time, format = "%j"))
# 
# #**********************************************
# View(Bull1221a) #completed Bull 12 2021
#**********************************************

#Bull 14
Bull14Jan21 = read.csv("Bull 14 January 2021.csv")
Bull14Feb21 = read.csv("Bull 14 February 2021.csv")

Bull1421=rbind(Bull14Jan21[c(1,4,5)],Bull14Feb21[c(1,4,5)])

Bull1421=Bull1421[order(Bull1421$Time),] 

# n=1:(nrow(Bull1421)/4)*4
# Bull1421a=Bull1421[n,]  
# 
# Bull1421a$doy <- as.numeric(strftime(Bull1421a$Time, format = "%j"))
# 
# #**********************************************
# View(Bull1421a) #completed Bull 14 2021
#**********************************************


#Bull 15
Bull15Feb21 = read.csv("Bull 15 February 2021.csv")
Bull15Mar21 = read.csv("Bull 15 March 2021.csv")
Bull15Apr21 = read.csv("Bull 15 April 2021.csv")
Bull15June21 = read.csv("Bull 15 June 2021.csv")
#Bull15Sept21 = read.csv("Bull 15 September 2021.csv") #could not convert


Bull1521=rbind(Bull15Feb21[c(1,4,5)],Bull15Mar21[c(1,4,5)], Bull15Apr21[c(1,4,5)], Bull15June21[c(1,4,5)])

Bull1521=Bull1521[order(Bull1521$Time),] 

#did this twice bc this one had so many data points
# n=1:(nrow(Bull1521)/4)*4
# Bull1521a=Bull1521[n,]  

# n=1:(nrow(Bull1521a)/4)*4
# Bull1521b=Bull1521a[n,]

# Bull1521a$doy <- as.numeric(strftime(Bull1521a$Time, format = "%j"))

#**********************************************
# View(Bull1521a) #completed Bull 15 2021
#**********************************************


#did not include september data in combination bc sept was weird

library(dplyr)
library(tidyverse)

#Combining Dataset (Hourly)
Bull2 <- Bull221 %>% add_column(BulNum = "2")
Bull6 <- Bull621 %>% add_column(BulNum = "6")
Bull7 <- Bull721 %>% add_column(BulNum = "7")
Bull8 <- Bull821 %>% add_column(BulNum = "8")
Bull9 <- Bull921 %>% add_column(BulNum = "9")
Bull10 <- Bull1021 %>% add_column(BulNum = "10")
Bull12 <- Bull1221 %>% add_column(BulNum = "12")
Bull14 <- Bull1421 %>% add_column(BulNum = "14")
Bull15 <- Bull1521 %>% add_column(BulNum = "15")

#Combining Dataset (Every 4 Hours)
# Bull2 <- Bull221a %>% add_column(BulNum = "2")
# Bull6 <- Bull621a %>% add_column(BulNum = "6")
# Bull7 <- Bull721a %>% add_column(BulNum = "7")
# Bull8 <- Bull821a %>% add_column(BulNum = "8")
# Bull9 <- Bull921a %>% add_column(BulNum = "9")
# Bull10 <- Bull1021a %>% add_column(BulNum = "10")
# Bull12 <- Bull1221a %>% add_column(BulNum = "12")
# Bull14 <- Bull1421a %>% add_column(BulNum = "14")
# Bull15 <- Bull1521a %>% add_column(BulNum = "15")

# View(Bull2) #checking to make sure this dataset is correct

# Without doy
Bull <- rbind(Bull2[c(1,2,3,4)],Bull6[c(1,2,3,4)],
              Bull7[c(1,2,3,4)],Bull8[c(1,2,3,4)],
              Bull9[c(1,2,3,4)],Bull10[c(1,2,3,4)],
              Bull12[c(1,2,3,4)],Bull14[c(1,2,3,4)],
              Bull15[c(1,2,3,4)])


# With doy
# Bull <- rbind(Bull2[c(1,2,3,4,5)],Bull6[c(1,2,3,4,5)],
#               Bull7[c(1,2,3,4,5)],Bull8[c(1,2,3,4,5)],
#               Bull9[c(1,2,3,4,5)],Bull10[c(1,2,3,4,5)],
#               Bull12[c(1,2,3,4,5)],Bull14[c(1,2,3,4,5)],
#               Bull15[c(1,2,3,4,5)])

Bull=Bull[order(Bull$Time),] 

write.csv(Bull,"data/hourlyBullData2021.csv")