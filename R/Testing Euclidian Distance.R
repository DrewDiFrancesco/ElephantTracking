BullData2021 <- read.csv("~/GitHub/ElephantTracking/data/BullData2021.csv")
View(BullData2021)
names(BullData2021)[names(BullData2021)=='ï..Time']='Time'
BullData2020 <- read.csv("~/GitHub/ElephantTracking/data/BullData2020.csv")
View(BullData2020)
names(BullData2020)[names(BullData2020)=='ï..Time']='Time'
BullData2019 <- read.csv("~/GitHub/ElephantTracking/data/BullData2019.csv")
View(BullData2019)
names(BullData2019)[names(BullData2019)=='ï..Time']='Time'



######## Bull Data 2021

Bull2_2021=subset(BullData2021,BulNum==2)
Bull2_2021$Lat2=Bull2_2021$Latitude
Bull2_2021$Long2=Bull2_2021$Longitude
Bull2_2021=Bull2_2021[,c(2,7,8)]
Bull2_2021[,1]=as.numeric(as.POSIXct(Bull2_2021[,1],format="%Y-%m-%d"))
Bull2_2021dates=unique(Bull2_2021[,1])
NewBull2_2021=matrix(NA,nrow=length(Bull2_2021dates),ncol=3)
colnames(NewBull2_2021)=c("Date","Lat2","Long2")
NewBull2_2021[,1]=Bull2_2021dates
for(i in (1:length(Bull2_2021dates))){
  NewBull2_2021[i,2]=mean(subset(Bull2_2021,Time==Bull2_2021dates[i])[,2])
  NewBull2_2021[i,3]=mean(subset(Bull2_2021,Time==Bull2_2021dates[i])[,3])
}


Bull6_2021=subset(BullData2021,BulNum==6)
Bull6_2021$Lat6=Bull6_2021$Latitude
Bull6_2021$Long6=Bull6_2021$Longitude
Bull6_2021=Bull6_2021[,c(2,7,8)]
Bull6_2021[,1]=as.numeric(as.POSIXct(Bull6_2021[,1],format="%Y-%m-%d"))
Bull6_2021dates=unique(Bull6_2021[,1])
NewBull6_2021=matrix(NA,nrow=length(Bull6_2021dates),ncol=3)
colnames(NewBull6_2021)=c("Date","Lat6","Long6")
NewBull6_2021[,1]=Bull6_2021dates
for(i in (1:length(Bull6_2021dates))){
  NewBull6_2021[i,2]=mean(subset(Bull6_2021,Time==Bull6_2021dates[i])[,2])
  NewBull6_2021[i,3]=mean(subset(Bull6_2021,Time==Bull6_2021dates[i])[,3])
}

Bull7_2021=subset(BullData2021,BulNum==7)
Bull7_2021$Lat7=Bull7_2021$Latitude
Bull7_2021$Long7=Bull7_2021$Longitude
Bull7_2021=Bull7_2021[,c(2,7,8)]
Bull7_2021[,1]=as.numeric(as.POSIXct(Bull7_2021[,1],format="%Y-%m-%d"))
Bull7_2021dates=unique(Bull7_2021[,1])
NewBull7_2021=matrix(NA,nrow=length(Bull7_2021dates),ncol=3)
colnames(NewBull7_2021)=c("Date","Lat7","Long7")
NewBull7_2021[,1]=Bull7_2021dates
for(i in (1:length(Bull7_2021dates))){
  NewBull7_2021[i,2]=mean(subset(Bull7_2021,Time==Bull7_2021dates[i])[,2])
  NewBull7_2021[i,3]=mean(subset(Bull7_2021,Time==Bull7_2021dates[i])[,3])
}
NewBullData26_2021=merge(NewBull2_2021,NewBull6_2021,by="Date",all=T)
NewBullData267_2021=merge(NewBullData26_2021,NewBull7_2021,by="Date",all=T)

Bull8_2021=subset(BullData2021,BulNum==8)
Bull8_2021$Lat8=Bull8_2021$Latitude
Bull8_2021$Long8=Bull8_2021$Longitude
Bull8_2021=Bull8_2021[,c(2,7,8)]
Bull8_2021[,1]=as.numeric(as.POSIXct(Bull8_2021[,1],format="%Y-%m-%d"))
Bull8_2021dates=unique(Bull8_2021[,1])
NewBull8_2021=matrix(NA,nrow=length(Bull8_2021dates),ncol=3)
colnames(NewBull8_2021)=c("Date","Lat8","Long8")
NewBull8_2021[,1]=Bull8_2021dates
for(i in (1:length(Bull8_2021dates))){
  NewBull8_2021[i,2]=mean(subset(Bull8_2021,Time==Bull8_2021dates[i])[,2])
  NewBull8_2021[i,3]=mean(subset(Bull8_2021,Time==Bull8_2021dates[i])[,3])
}
NewBullData2678_2021=merge(NewBullData267_2021,NewBull8_2021,by="Date",all=T)

Bull9_2021=subset(BullData2021,BulNum==9)
Bull9_2021$Lat9=Bull9_2021$Latitude
Bull9_2021$Long9=Bull9_2021$Longitude
Bull9_2021=Bull9_2021[,c(2,7,8)]
Bull9_2021[,1]=as.numeric(as.POSIXct(Bull9_2021[,1],format="%Y-%m-%d"))
Bull9_2021dates=unique(Bull9_2021[,1])
NewBull9_2021=matrix(NA,nrow=length(Bull9_2021dates),ncol=3)
colnames(NewBull9_2021)=c("Date","Lat9","Long9")
NewBull9_2021[,1]=Bull9_2021dates
for(i in (1:length(Bull9_2021dates))){
  NewBull9_2021[i,2]=mean(subset(Bull9_2021,Time==Bull9_2021dates[i])[,2])
  NewBull9_2021[i,3]=mean(subset(Bull9_2021,Time==Bull9_2021dates[i])[,3])
}
NewBullData26789_2021=merge(NewBullData2678_2021,NewBull9_2021,by="Date",all=T)

Bull10_2021=subset(BullData2021,BulNum==10)
Bull10_2021$Lat10=Bull10_2021$Latitude
Bull10_2021$Long10=Bull10_2021$Longitude
Bull10_2021=Bull10_2021[,c(2,7,8)]
Bull10_2021[,1]=as.numeric(as.POSIXct(Bull10_2021[,1],format="%Y-%m-%d"))
Bull10_2021dates=unique(Bull10_2021[,1])
NewBull10_2021=matrix(NA,nrow=length(Bull10_2021dates),ncol=3)
colnames(NewBull10_2021)=c("Date","Lat10","Long10")
NewBull10_2021[,1]=Bull10_2021dates
for(i in (1:length(Bull10_2021dates))){
  NewBull10_2021[i,2]=mean(subset(Bull10_2021,Time==Bull10_2021dates[i])[,2])
  NewBull10_2021[i,3]=mean(subset(Bull10_2021,Time==Bull10_2021dates[i])[,3])
}
NewBullData2678910_2021=merge(NewBullData26789_2021,NewBull10_2021,by="Date",all=T)

Bull12_2021=subset(BullData2021,BulNum==12)
Bull12_2021$Lat12=Bull12_2021$Latitude
Bull12_2021$Long12=Bull12_2021$Longitude
Bull12_2021=Bull12_2021[,c(2,7,8)]
Bull12_2021[,1]=as.numeric(as.POSIXct(Bull12_2021[,1],format="%Y-%m-%d"))
Bull12_2021dates=unique(Bull12_2021[,1])
NewBull12_2021=matrix(NA,nrow=length(Bull12_2021dates),ncol=3)
colnames(NewBull12_2021)=c("Date","Lat12","Long12")
NewBull12_2021[,1]=Bull12_2021dates
for(i in (1:length(Bull12_2021dates))){
  NewBull12_2021[i,2]=mean(subset(Bull12_2021,Time==Bull12_2021dates[i])[,2])
  NewBull12_2021[i,3]=mean(subset(Bull12_2021,Time==Bull12_2021dates[i])[,3])
}
NewBullData267891012_2021=merge(NewBullData2678910_2021,NewBull12_2021,by="Date",all=T)

Bull14_2021=subset(BullData2021,BulNum==14)
Bull14_2021$Lat14=Bull14_2021$Latitude
Bull14_2021$Long14=Bull14_2021$Longitude
Bull14_2021=Bull14_2021[,c(2,7,8)]
Bull14_2021[,1]=as.numeric(as.POSIXct(Bull14_2021[,1],format="%Y-%m-%d"))
Bull14_2021dates=unique(Bull14_2021[,1])
NewBull14_2021=matrix(NA,nrow=length(Bull14_2021dates),ncol=3)
colnames(NewBull14_2021)=c("Date","Lat14","Long14")
NewBull14_2021[,1]=Bull14_2021dates
for(i in (1:length(Bull14_2021dates))){
  NewBull14_2021[i,2]=mean(subset(Bull14_2021,Time==Bull14_2021dates[i])[,2])
  NewBull14_2021[i,3]=mean(subset(Bull14_2021,Time==Bull14_2021dates[i])[,3])
}
NewBullData26789101214_2021=merge(NewBullData267891012_2021,NewBull14_2021,by="Date",all=T)

Bull15_2021=subset(BullData2021,BulNum==15)
Bull15_2021$Lat15=Bull15_2021$Latitude
Bull15_2021$Long15=Bull15_2021$Longitude
Bull15_2021=Bull15_2021[,c(2,7,8)]
Bull15_2021[,1]=as.numeric(as.POSIXct(Bull15_2021[,1],format="%Y-%m-%d"))
Bull15_2021dates=unique(Bull15_2021[,1])
NewBull15_2021=matrix(NA,nrow=length(Bull15_2021dates),ncol=3)
colnames(NewBull15_2021)=c("Date","Lat15","Long15")
NewBull15_2021[,1]=Bull15_2021dates
for(i in (1:length(Bull15_2021dates))){
  NewBull15_2021[i,2]=mean(subset(Bull15_2021,Time==Bull15_2021dates[i])[,2])
  NewBull15_2021[i,3]=mean(subset(Bull15_2021,Time==Bull15_2021dates[i])[,3])
}
NewBullData_2021=merge(NewBullData26789101214_2021,NewBull15_2021,by="Date",all=T)






########### 2020 Data

Bull1_2020=subset(BullData2020,BulNum==1)
Bull1_2020$Lat1=Bull1_2020$Latitude
Bull1_2020$Long1=Bull1_2020$Longitude
Bull1_2020=Bull1_2020[,c(2,7,8)]
Bull1_2020[,1]=as.numeric(as.POSIXct(Bull1_2020[,1],format="%Y-%m-%d"))
Bull1_2020dates=unique(Bull1_2020[,1])
NewBull1_2020=matrix(NA,nrow=length(Bull1_2020dates),ncol=3)
colnames(NewBull1_2020)=c("Date","Lat1","Long1")
NewBull1_2020[,1]=Bull1_2020dates
for(i in (1:length(Bull1_2020dates))){
  NewBull1_2020[i,2]=mean(subset(Bull1_2020,Time==Bull1_2020dates[i])[,2])
  NewBull1_2020[i,3]=mean(subset(Bull1_2020,Time==Bull1_2020dates[i])[,3])
}

Bull2_2020=subset(BullData2020,BulNum==2)
Bull2_2020$Lat2=Bull2_2020$Latitude
Bull2_2020$Long2=Bull2_2020$Longitude
Bull2_2020=Bull2_2020[,c(2,7,8)]
Bull2_2020[,1]=as.numeric(as.POSIXct(Bull2_2020[,1],format="%Y-%m-%d"))
Bull2_2020dates=unique(Bull2_2020[,1])
NewBull2_2020=matrix(NA,nrow=length(Bull2_2020dates),ncol=3)
colnames(NewBull2_2020)=c("Date","Lat2","Long2")
NewBull2_2020[,1]=Bull2_2020dates
for(i in (1:length(Bull2_2020dates))){
  NewBull2_2020[i,2]=mean(subset(Bull2_2020,Time==Bull2_2020dates[i])[,2])
  NewBull2_2020[i,3]=mean(subset(Bull2_2020,Time==Bull2_2020dates[i])[,3])
}
NewBull12_2020=merge(NewBull1_2020,NewBull2_2020,by="Date",all=T)

Bull5_2020=subset(BullData2020,BulNum==5)
Bull5_2020$Lat2=Bull5_2020$Latitude
Bull5_2020$Long2=Bull5_2020$Longitude
Bull5_2020=Bull5_2020[,c(2,7,8)]
Bull5_2020[,1]=as.numeric(as.POSIXct(Bull5_2020[,1],format="%Y-%m-%d"))
Bull5_2020dates=unique(Bull5_2020[,1])
NewBull5_2020=matrix(NA,nrow=length(Bull5_2020dates),ncol=3)
colnames(NewBull5_2020)=c("Date","Lat5","Long5")
NewBull5_2020[,1]=Bull5_2020dates
for(i in (1:length(Bull5_2020dates))){
  NewBull5_2020[i,2]=mean(subset(Bull5_2020,Time==Bull5_2020dates[i])[,2])
  NewBull5_2020[i,3]=mean(subset(Bull5_2020,Time==Bull5_2020dates[i])[,3])
}
NewBull125_2020=merge(NewBull12_2020,NewBull5_2020,by="Date",all=T)


Bull6_2020=subset(BullData2020,BulNum==6)
Bull6_2020$Lat6=Bull6_2020$Latitude
Bull6_2020$Long6=Bull6_2020$Longitude
Bull6_2020=Bull6_2020[,c(2,7,8)]
Bull6_2020[,1]=as.numeric(as.POSIXct(Bull6_2020[,1],format="%Y-%m-%d"))
Bull6_2020dates=unique(Bull6_2020[,1])
NewBull6_2020=matrix(NA,nrow=length(Bull6_2020dates),ncol=3)
colnames(NewBull6_2020)=c("Date","Lat6","Long6")
NewBull6_2020[,1]=Bull6_2020dates
for(i in (1:length(Bull6_2020dates))){
  NewBull6_2020[i,2]=mean(subset(Bull6_2020,Time==Bull6_2020dates[i])[,2])
  NewBull6_2020[i,3]=mean(subset(Bull6_2020,Time==Bull6_2020dates[i])[,3])
}
NewBull1256_2020=merge(NewBull125_2020,NewBull6_2020,by="Date",all=T)


Bull7_2020=subset(BullData2020,BulNum==7)
Bull7_2020$Lat7=Bull7_2020$Latitude
Bull7_2020$Long7=Bull7_2020$Longitude
Bull7_2020=Bull7_2020[,c(2,7,8)]
Bull7_2020[,1]=as.numeric(as.POSIXct(Bull7_2020[,1],format="%Y-%m-%d"))
Bull7_2020dates=unique(Bull7_2020[,1])
NewBull7_2020=matrix(NA,nrow=length(Bull7_2020dates),ncol=3)
colnames(NewBull7_2020)=c("Date","Lat7","Long7")
NewBull7_2020[,1]=Bull7_2020dates
for(i in (1:length(Bull7_2020dates))){
  NewBull7_2020[i,2]=mean(subset(Bull7_2020,Time==Bull7_2020dates[i])[,2])
  NewBull7_2020[i,3]=mean(subset(Bull7_2020,Time==Bull7_2020dates[i])[,3])
}
NewBull12567_2020=merge(NewBull1256_2020,NewBull7_2020,by="Date",all=T)


Bull8_2020=subset(BullData2020,BulNum==8)
Bull8_2020$Lat8=Bull8_2020$Latitude
Bull8_2020$Long8=Bull8_2020$Longitude
Bull8_2020=Bull8_2020[,c(2,7,8)]
Bull8_2020[,1]=as.numeric(as.POSIXct(Bull8_2020[,1],format="%Y-%m-%d"))
Bull8_2020dates=unique(Bull8_2020[,1])
NewBull8_2020=matrix(NA,nrow=length(Bull8_2020dates),ncol=3)
colnames(NewBull8_2020)=c("Date","Lat8","Long8")
NewBull8_2020[,1]=Bull8_2020dates
for(i in (1:length(Bull8_2020dates))){
  NewBull8_2020[i,2]=mean(subset(Bull8_2020,Time==Bull8_2020dates[i])[,2])
  NewBull8_2020[i,3]=mean(subset(Bull8_2020,Time==Bull8_2020dates[i])[,3])
}
NewBull125678_2020=merge(NewBull12567_2020,NewBull8_2020,by="Date",all=T)


Bull9_2020=subset(BullData2020,BulNum==9)
Bull9_2020$Lat9=Bull9_2020$Latitude
Bull9_2020$Long9=Bull9_2020$Longitude
Bull9_2020=Bull9_2020[,c(2,7,8)]
Bull9_2020[,1]=as.numeric(as.POSIXct(Bull9_2020[,1],format="%Y-%m-%d"))
Bull9_2020dates=unique(Bull9_2020[,1])
NewBull9_2020=matrix(NA,nrow=length(Bull9_2020dates),ncol=3)
colnames(NewBull9_2020)=c("Date","Lat9","Long9")
NewBull9_2020[,1]=Bull9_2020dates
for(i in (1:length(Bull9_2020dates))){
  NewBull9_2020[i,2]=mean(subset(Bull9_2020,Time==Bull9_2020dates[i])[,2])
  NewBull9_2020[i,3]=mean(subset(Bull9_2020,Time==Bull9_2020dates[i])[,3])
}
NewBull1256789_2020=merge(NewBull125678_2020,NewBull9_2020,by="Date",all=T)


Bull12_2020=subset(BullData2020,BulNum==12)
Bull12_2020$Lat12=Bull12_2020$Latitude
Bull12_2020$Long12=Bull12_2020$Longitude
Bull12_2020=Bull12_2020[,c(2,7,8)]
Bull12_2020[,1]=as.numeric(as.POSIXct(Bull12_2020[,1],format="%Y-%m-%d"))
Bull12_2020dates=unique(Bull12_2020[,1])
NewBull12_2020=matrix(NA,nrow=length(Bull12_2020dates),ncol=3)
colnames(NewBull12_2020)=c("Date","Lat12","Long12")
NewBull12_2020[,1]=Bull12_2020dates
for(i in (1:length(Bull12_2020dates))){
  NewBull12_2020[i,2]=mean(subset(Bull12_2020,Time==Bull12_2020dates[i])[,2])
  NewBull12_2020[i,3]=mean(subset(Bull12_2020,Time==Bull12_2020dates[i])[,3])
}
NewBull125678912_2020=merge(NewBull1256789_2020,NewBull12_2020,by="Date",all=T)


Bull13_2020=subset(BullData2020,BulNum==13)
Bull13_2020$Lat12=Bull13_2020$Latitude
Bull13_2020$Long12=Bull13_2020$Longitude
Bull13_2020=Bull13_2020[,c(2,7,8)]
Bull13_2020[,1]=as.numeric(as.POSIXct(Bull13_2020[,1],format="%Y-%m-%d"))
Bull13_2020dates=unique(Bull13_2020[,1])
NewBull13_2020=matrix(NA,nrow=length(Bull13_2020dates),ncol=3)
colnames(NewBull13_2020)=c("Date","Lat13","Long13")
NewBull13_2020[,1]=Bull13_2020dates
for(i in (1:length(Bull13_2020dates))){
  NewBull13_2020[i,2]=mean(subset(Bull13_2020,Time==Bull13_2020dates[i])[,2])
  NewBull13_2020[i,3]=mean(subset(Bull13_2020,Time==Bull13_2020dates[i])[,3])
}
NewBull12567891213_2020=merge(NewBull125678912_2020,NewBull13_2020,by="Date",all=T)


Bull14_2020=subset(BullData2020,BulNum==14)
Bull14_2020$Lat14=Bull14_2020$Latitude
Bull14_2020$Long14=Bull14_2020$Longitude
Bull14_2020=Bull14_2020[,c(2,7,8)]
Bull14_2020[,1]=as.numeric(as.POSIXct(Bull14_2020[,1],format="%Y-%m-%d"))
Bull14_2020dates=unique(Bull14_2020[,1])
NewBull14_2020=matrix(NA,nrow=length(Bull14_2020dates),ncol=3)
colnames(NewBull14_2020)=c("Date","Lat14","Long14")
NewBull14_2020[,1]=Bull14_2020dates
for(i in (1:length(Bull14_2020dates))){
  NewBull14_2020[i,2]=mean(subset(Bull14_2020,Time==Bull14_2020dates[i])[,2])
  NewBull14_2020[i,3]=mean(subset(Bull14_2020,Time==Bull14_2020dates[i])[,3])
}
NewBull_2020=merge(NewBull12567891213_2020,NewBull14_2020,by="Date",all=T)

NewBull_2020_2021=merge(NewBull_2020,NewBullData_2021,all=T)

View(NewBull_2020_2021)





########## Bull Data 2019

Bull1_2019=subset(BullData2019,BulNum==1)
Bull1_2019$Lat1=Bull1_2019$Latitude
Bull1_2019$Long1=Bull1_2019$Longitude
Bull1_2019=Bull1_2019[,c(2,7,8)]
Bull1_2019[,1]=as.numeric(as.POSIXct(Bull1_2019[,1],format="%Y-%m-%d"))
Bull1_2019dates=unique(Bull1_2019[,1])
NewBull1_2019=matrix(NA,nrow=length(Bull1_2019dates),ncol=3)
colnames(NewBull1_2019)=c("Date","Lat1","Long1")
NewBull1_2019[,1]=Bull1_2019dates
for(i in (1:length(Bull1_2019dates))){
  NewBull1_2019[i,2]=mean(subset(Bull1_2019,Time==Bull1_2019dates[i])[,2])
  NewBull1_2019[i,3]=mean(subset(Bull1_2019,Time==Bull1_2019dates[i])[,3])
}

Bull2_2019=subset(BullData2019,BulNum==2)
Bull2_2019$Lat1=Bull2_2019$Latitude
Bull2_2019$Long1=Bull2_2019$Longitude
Bull2_2019=Bull2_2019[,c(2,7,8)]
Bull2_2019[,1]=as.numeric(as.POSIXct(Bull2_2019[,1],format="%Y-%m-%d"))
Bull2_2019dates=unique(Bull2_2019[,1])
NewBull2_2019=matrix(NA,nrow=length(Bull2_2019dates),ncol=3)
colnames(NewBull2_2019)=c("Date","Lat2","Long2")
NewBull2_2019[,1]=Bull2_2019dates
for(i in (1:length(Bull2_2019dates))){
  NewBull2_2019[i,2]=mean(subset(Bull2_2019,Time==Bull2_2019dates[i])[,2])
  NewBull2_2019[i,3]=mean(subset(Bull2_2019,Time==Bull2_2019dates[i])[,3])
}
NewBull12_2019=merge(NewBull1_2019,NewBull2_2019,by="Date",all=T)

Bull3_2019=subset(BullData2019,BulNum==3)
Bull3_2019$Lat1=Bull3_2019$Latitude
Bull3_2019$Long1=Bull3_2019$Longitude
Bull3_2019=Bull3_2019[,c(2,7,8)]
Bull3_2019[,1]=as.numeric(as.POSIXct(Bull3_2019[,1],format="%Y-%m-%d"))
Bull3_2019dates=unique(Bull3_2019[,1])
NewBull3_2019=matrix(NA,nrow=length(Bull3_2019dates),ncol=3)
colnames(NewBull3_2019)=c("Date","Lat3","Long3")
NewBull3_2019[,1]=Bull3_2019dates
for(i in (1:length(Bull3_2019dates))){
  NewBull3_2019[i,2]=mean(subset(Bull3_2019,Time==Bull3_2019dates[i])[,2])
  NewBull3_2019[i,3]=mean(subset(Bull3_2019,Time==Bull3_2019dates[i])[,3])
}
NewBull123_2019=merge(NewBull12_2019,NewBull3_2019,by="Date",all=T)

Bull4_2019=subset(BullData2019,BulNum==4)
Bull4_2019$Lat1=Bull4_2019$Latitude
Bull4_2019$Long1=Bull4_2019$Longitude
Bull4_2019=Bull4_2019[,c(2,7,8)]
Bull4_2019[,1]=as.numeric(as.POSIXct(Bull4_2019[,1],format="%Y-%m-%d"))
Bull4_2019dates=unique(Bull4_2019[,1])
NewBull4_2019=matrix(NA,nrow=length(Bull4_2019dates),ncol=3)
colnames(NewBull4_2019)=c("Date","Lat4","Long4")
NewBull4_2019[,1]=Bull4_2019dates
for(i in (1:length(Bull4_2019dates))){
  NewBull4_2019[i,2]=mean(subset(Bull4_2019,Time==Bull4_2019dates[i])[,2])
  NewBull4_2019[i,3]=mean(subset(Bull4_2019,Time==Bull4_2019dates[i])[,3])
}
NewBull1234_2019=merge(NewBull123_2019,NewBull4_2019,by="Date",all=T)

Bull5_2019=subset(BullData2019,BulNum==5)
Bull5_2019$Lat1=Bull5_2019$Latitude
Bull5_2019$Long1=Bull5_2019$Longitude
Bull5_2019=Bull5_2019[,c(2,7,8)]
Bull5_2019[,1]=as.numeric(as.POSIXct(Bull5_2019[,1],format="%Y-%m-%d"))
Bull5_2019dates=unique(Bull5_2019[,1])
NewBull5_2019=matrix(NA,nrow=length(Bull5_2019dates),ncol=3)
colnames(NewBull5_2019)=c("Date","Lat5","Long5")
NewBull5_2019[,1]=Bull5_2019dates
for(i in (1:length(Bull5_2019dates))){
  NewBull5_2019[i,2]=mean(subset(Bull5_2019,Time==Bull5_2019dates[i])[,2])
  NewBull5_2019[i,3]=mean(subset(Bull5_2019,Time==Bull5_2019dates[i])[,3])
}
NewBull12345_2019=merge(NewBull1234_2019,NewBull5_2019,by="Date",all=T)

Bull6_2019=subset(BullData2019,BulNum==6)
Bull6_2019$Lat1=Bull6_2019$Latitude
Bull6_2019$Long1=Bull6_2019$Longitude
Bull6_2019=Bull6_2019[,c(2,7,8)]
Bull6_2019[,1]=as.numeric(as.POSIXct(Bull6_2019[,1],format="%Y-%m-%d"))
Bull6_2019dates=unique(Bull6_2019[,1])
NewBull6_2019=matrix(NA,nrow=length(Bull6_2019dates),ncol=3)
colnames(NewBull6_2019)=c("Date","Lat6","Long6")
NewBull6_2019[,1]=Bull6_2019dates
for(i in (1:length(Bull6_2019dates))){
  NewBull6_2019[i,2]=mean(subset(Bull6_2019,Time==Bull6_2019dates[i])[,2])
  NewBull6_2019[i,3]=mean(subset(Bull6_2019,Time==Bull6_2019dates[i])[,3])
}
NewBull123456_2019=merge(NewBull12345_2019,NewBull6_2019,by="Date",all=T)

Bull7_2019=subset(BullData2019,BulNum==7)
Bull7_2019$Lat1=Bull7_2019$Latitude
Bull7_2019$Long1=Bull7_2019$Longitude
Bull7_2019=Bull7_2019[,c(2,7,8)]
Bull7_2019[,1]=as.numeric(as.POSIXct(Bull7_2019[,1],format="%Y-%m-%d"))
Bull7_2019dates=unique(Bull7_2019[,1])
NewBull7_2019=matrix(NA,nrow=length(Bull7_2019dates),ncol=3)
colnames(NewBull7_2019)=c("Date","Lat7","Long7")
NewBull7_2019[,1]=Bull7_2019dates
for(i in (1:length(Bull7_2019dates))){
  NewBull7_2019[i,2]=mean(subset(Bull7_2019,Time==Bull7_2019dates[i])[,2])
  NewBull7_2019[i,3]=mean(subset(Bull7_2019,Time==Bull7_2019dates[i])[,3])
}
NewBull1234567_2019=merge(NewBull123456_2019,NewBull7_2019,by="Date",all=T)

Bull8_2019=subset(BullData2019,BulNum==8)
Bull8_2019$Lat1=Bull8_2019$Latitude
Bull8_2019$Long1=Bull8_2019$Longitude
Bull8_2019=Bull8_2019[,c(2,7,8)]
Bull8_2019[,1]=as.numeric(as.POSIXct(Bull8_2019[,1],format="%Y-%m-%d"))
Bull8_2019dates=unique(Bull8_2019[,1])
NewBull8_2019=matrix(NA,nrow=length(Bull8_2019dates),ncol=3)
colnames(NewBull8_2019)=c("Date","Lat8","Long8")
NewBull8_2019[,1]=Bull8_2019dates
for(i in (1:length(Bull8_2019dates))){
  NewBull8_2019[i,2]=mean(subset(Bull8_2019,Time==Bull8_2019dates[i])[,2])
  NewBull8_2019[i,3]=mean(subset(Bull8_2019,Time==Bull8_2019dates[i])[,3])
}
NewBull12345678_2019=merge(NewBull1234567_2019,NewBull8_2019,by="Date",all=T)

Bull9_2019=subset(BullData2019,BulNum==9)
Bull9_2019$Lat1=Bull9_2019$Latitude
Bull9_2019$Long1=Bull9_2019$Longitude
Bull9_2019=Bull9_2019[,c(2,7,8)]
Bull9_2019[,1]=as.numeric(as.POSIXct(Bull9_2019[,1],format="%Y-%m-%d"))
Bull9_2019dates=unique(Bull9_2019[,1])
NewBull9_2019=matrix(NA,nrow=length(Bull9_2019dates),ncol=3)
colnames(NewBull9_2019)=c("Date","Lat9","Long9")
NewBull9_2019[,1]=Bull9_2019dates
for(i in (1:length(Bull9_2019dates))){
  NewBull9_2019[i,2]=mean(subset(Bull9_2019,Time==Bull9_2019dates[i])[,2])
  NewBull9_2019[i,3]=mean(subset(Bull9_2019,Time==Bull9_2019dates[i])[,3])
}
NewBull123456789_2019=merge(NewBull12345678_2019,NewBull9_2019,by="Date",all=T)

Bull10_2019=subset(BullData2019,BulNum==10)
Bull10_2019$Lat1=Bull10_2019$Latitude
Bull10_2019$Long1=Bull10_2019$Longitude
Bull10_2019=Bull10_2019[,c(2,7,8)]
Bull10_2019[,1]=as.numeric(as.POSIXct(Bull10_2019[,1],format="%Y-%m-%d"))
Bull10_2019dates=unique(Bull10_2019[,1])
NewBull10_2019=matrix(NA,nrow=length(Bull10_2019dates),ncol=3)
colnames(NewBull10_2019)=c("Date","Lat10","Long10")
NewBull10_2019[,1]=Bull10_2019dates
for(i in (1:length(Bull10_2019dates))){
  NewBull10_2019[i,2]=mean(subset(Bull10_2019,Time==Bull10_2019dates[i])[,2])
  NewBull10_2019[i,3]=mean(subset(Bull10_2019,Time==Bull10_2019dates[i])[,3])
}
NewBull12345678910_2019=merge(NewBull123456789_2019,NewBull10_2019,by="Date",all=T)

Bull12_2019=subset(BullData2019,BulNum==12)
Bull12_2019$Lat1=Bull12_2019$Latitude
Bull12_2019$Long1=Bull12_2019$Longitude
Bull12_2019=Bull12_2019[,c(2,7,8)]
Bull12_2019[,1]=as.numeric(as.POSIXct(Bull12_2019[,1],format="%Y-%m-%d"))
Bull12_2019dates=unique(Bull12_2019[,1])
NewBull12_2019=matrix(NA,nrow=length(Bull12_2019dates),ncol=3)
colnames(NewBull12_2019)=c("Date","Lat12","Long12")
NewBull12_2019[,1]=Bull12_2019dates
for(i in (1:length(Bull12_2019dates))){
  NewBull12_2019[i,2]=mean(subset(Bull12_2019,Time==Bull12_2019dates[i])[,2])
  NewBull12_2019[i,3]=mean(subset(Bull12_2019,Time==Bull12_2019dates[i])[,3])
}
NewBull1234567891012_2019=merge(NewBull12345678910_2019,NewBull12_2019,by="Date",all=T)

Bull13_2019=subset(BullData2019,BulNum==13)
Bull13_2019$Lat1=Bull13_2019$Latitude
Bull13_2019$Long1=Bull13_2019$Longitude
Bull13_2019=Bull13_2019[,c(2,7,8)]
Bull13_2019[,1]=as.numeric(as.POSIXct(Bull13_2019[,1],format="%Y-%m-%d"))
Bull13_2019dates=unique(Bull13_2019[,1])
NewBull13_2019=matrix(NA,nrow=length(Bull13_2019dates),ncol=3)
colnames(NewBull13_2019)=c("Date","Lat13","Long13")
NewBull13_2019[,1]=Bull13_2019dates
for(i in (1:length(Bull13_2019dates))){
  NewBull13_2019[i,2]=mean(subset(Bull13_2019,Time==Bull13_2019dates[i])[,2])
  NewBull13_2019[i,3]=mean(subset(Bull13_2019,Time==Bull13_2019dates[i])[,3])
}
NewBull123456789101213_2019=merge(NewBull1234567891012_2019,NewBull13_2019,by="Date",all=T)

Bull14_2019=subset(BullData2019,BulNum==14)
Bull14_2019$Lat1=Bull14_2019$Latitude
Bull14_2019$Long1=Bull14_2019$Longitude
Bull14_2019=Bull14_2019[,c(2,7,8)]
Bull14_2019[,1]=as.numeric(as.POSIXct(Bull14_2019[,1],format="%Y-%m-%d"))
Bull14_2019dates=unique(Bull14_2019[,1])
NewBull14_2019=matrix(NA,nrow=length(Bull14_2019dates),ncol=3)
colnames(NewBull14_2019)=c("Date","Lat14","Long14")
NewBull14_2019[,1]=Bull14_2019dates
for(i in (1:length(Bull14_2019dates))){
  NewBull14_2019[i,2]=mean(subset(Bull14_2019,Time==Bull14_2019dates[i])[,2])
  NewBull14_2019[i,3]=mean(subset(Bull14_2019,Time==Bull14_2019dates[i])[,3])
}
NewBull_2019=merge(NewBull123456789101213_2019,NewBull14_2019,by="Date",all=T)

BullData=merge(NewBull_2020_2021,NewBull_2019,all=T)

View(BullData)

BullData=BullData[,c("Date","Lat1","Long1","Lat2","Long2","Lat3","Long3","Lat4","Long4","Lat5","Long5","Lat6","Long6","Lat7","Long7","Lat8","Long8","Lat9","Long9","Lat10","Long10","Lat12","Long12","Lat13","Long13","Lat14","Long14","Lat15","Long15")]


########## Testing Distances


Bull1Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+1)
Bull1Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull1Dist)){
  for(i in 2:ncol(Bull1Dist)){
    Bull1Dist[j,i]=sqrt((BullData[j,2]-BullData[j,2*(i-1)])^2+(BullData[j,3]-BullData[j,2*(i-1)+1])^2)
  }
}

Bull1Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+1)
Bull1Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull1Dist)){
  for(i in 2:ncol(Bull1Dist)){
    Bull1Dist[j,i]=sqrt((BullData[j,2]-BullData[j,2*(i-1)])^2+(BullData[j,3]-BullData[j,2*(i-1)+1])^2)
  }
}

