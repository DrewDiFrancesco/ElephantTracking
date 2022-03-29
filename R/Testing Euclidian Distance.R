BullData2021 <- read.csv("data/BullData2021.csv")
#View(BullData2021)
names(BullData2021)[names(BullData2021)=='?..Time']='Time'
BullData2020 <- read.csv("data/BullData2020.csv")
#View(BullData2020)
names(BullData2020)[names(BullData2020)=='?..Time']='Time'
BullData2019 <- read.csv("data/BullData2019.csv")
#View(BullData2019)
names(BullData2019)[names(BullData2019)=='?..Time']='Time'
BullData2021 <- read.csv("data/BullData2021.csv")
# View(BullData2021)
names(BullData2021)[names(BullData2021)=='?..Time']='Time'
BullData2020 <- read.csv("data/BullData2020.csv")
# View(BullData2020)
names(BullData2020)[names(BullData2020)=='?..Time']='Time'
BullData2019 <- read.csv("data/BullData2019.csv")
# View(BullData2019)
names(BullData2019)[names(BullData2019)=='?..Time']='Time'




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

# View(NewBull_2020_2021)





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

# View(BullData)

BullData=BullData[,c("Date","Lat1","Long1","Lat2","Long2","Lat3","Long3","Lat4","Long4","Lat5","Long5","Lat6","Long6","Lat7","Long7","Lat8","Long8","Lat9","Long9","Lat10","Long10","Lat12","Long12","Lat13","Long13","Lat14","Long14","Lat15","Long15")]


########## Testing Distances

# Zambezi River Distance
<<<<<<< HEAD
VFZR=read.csv("~/GitHub/ElephantTracking/data/VictoriaFallsCity-ZambeziRiver.csv")
VictoriaFalls=VFZR[c(1:77),c(2,3)]
ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]
=======
VFZR=read.csv("data/VictoriaFallsCity-ZambeziRiver.csv")
ZambeziRiver=VFZR[c(78:nrow(VFZR)),c(2,3)]
VictoriaFalls=VFZR[c(1:77),c(2,3)]
>>>>>>> 95807be270f091e328cf085dab8334b6d4e380ed


Bull1Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull1Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull1Dist)){
  for(i in 2:(ncol(Bull1Dist)-2)){
    Bull1Dist[j,i]=sqrt((111.319*(BullData[j,2]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,3]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull1Dist[j,ncol(Bull1Dist)-1]=min(sqrt((111.319*(BullData[j,2]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,3]-ZambeziRiver[,2]))^2))
  Bull1Dist[j,ncol(Bull1Dist)]=min(sqrt((111.319*(BullData[j,2]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,3]-VictoriaFalls[,2]))^2))
}

Bull2Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull2Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull2Dist)){
  for(i in 2:(ncol(Bull2Dist)-2)){
    Bull2Dist[j,i]=sqrt((111.319*(BullData[j,4]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,5]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull2Dist[j,ncol(Bull2Dist)-1]=min(sqrt((111.319*(BullData[j,4]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,5]-ZambeziRiver[,2]))^2))
  Bull2Dist[j,ncol(Bull2Dist)]=min(sqrt((111.319*(BullData[j,4]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,5]-VictoriaFalls[,2]))^2))
  
}

Bull3Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull3Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull3Dist)){
  for(i in 2:(ncol(Bull3Dist)-2)){
    Bull3Dist[j,i]=sqrt((111.319*(BullData[j,6]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,7]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull3Dist[j,ncol(Bull3Dist)-1]=min(sqrt((111.319*(BullData[j,6]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,7]-ZambeziRiver[,2]))^2))
  Bull3Dist[j,ncol(Bull3Dist)]=min(sqrt((BullData[j,6]-VictoriaFalls[,1])^2+(BullData[j,7]-VictoriaFalls[,2])^2))
  
}

Bull4Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull4Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull4Dist)){
  for(i in 2:(ncol(Bull4Dist)-2)){
    Bull4Dist[j,i]=sqrt((111.319*(BullData[j,8]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,9]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull4Dist[j,ncol(Bull4Dist)-1]=min(sqrt((111.319*(BullData[j,8]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,9]-ZambeziRiver[,2]))^2))
  Bull4Dist[j,ncol(Bull4Dist)]=min(sqrt((111.319*(BullData[j,8]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,9]-VictoriaFalls[,2]))^2))
  
}

Bull5Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull5Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull5Dist)){
  for(i in 2:(ncol(Bull5Dist)-2)){
    Bull5Dist[j,i]=sqrt((111.319*(BullData[j,10]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,11]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull5Dist[j,ncol(Bull5Dist)-1]=min(sqrt((111.319*(BullData[j,10]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,11]-ZambeziRiver[,2]))^2))
  Bull5Dist[j,ncol(Bull5Dist)]=min(sqrt((111.319*(BullData[j,10]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,11]-VictoriaFalls[,2]))^2))
}

Bull6Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull6Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull6Dist)){
  for(i in 2:(ncol(Bull6Dist)-2)){
    Bull6Dist[j,i]=sqrt((111.319*(BullData[j,12]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,13]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull6Dist[j,ncol(Bull6Dist)-1]=min(sqrt((111.319*(BullData[j,12]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,13]-ZambeziRiver[,2]))^2))
  Bull6Dist[j,ncol(Bull6Dist)]=min(sqrt((111.319*(BullData[j,12]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,13]-VictoriaFalls[,2]))^2))
  
}

Bull7Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull7Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull7Dist)){
  for(i in 2:(ncol(Bull7Dist)-2)){
    Bull7Dist[j,i]=sqrt((111.319*(BullData[j,14]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,15]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull7Dist[j,ncol(Bull7Dist)-1]=min(sqrt((111.319*(BullData[j,14]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,15]-ZambeziRiver[,2]))^2))
  Bull7Dist[j,ncol(Bull7Dist)]=min(sqrt((111.319*(BullData[j,14]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,15]-VictoriaFalls[,2]))^2))
}

Bull8Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull8Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull8Dist)){
  for(i in 2:(ncol(Bull8Dist)-2)){
    Bull8Dist[j,i]=sqrt((111.319*(BullData[j,16]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,17]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull8Dist[j,ncol(Bull8Dist)-1]=min(sqrt((111.319*(BullData[j,16]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,17]-ZambeziRiver[,2]))^2))
  Bull8Dist[j,ncol(Bull8Dist)]=min(sqrt((111.319*(BullData[j,16]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,17]-VictoriaFalls[,2]))^2))
}

Bull9Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull9Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull9Dist)){
  for(i in 2:(ncol(Bull9Dist)-2)){
    Bull9Dist[j,i]=sqrt((111.319*(BullData[j,18]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,19]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull9Dist[j,ncol(Bull9Dist)-1]=min(sqrt((111.319*(BullData[j,18]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,19]-ZambeziRiver[,2]))^2))
  Bull9Dist[j,ncol(Bull9Dist)]=min(sqrt((111.319*(BullData[j,18]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,19]-VictoriaFalls[,2]))^2))
}

Bull10Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull10Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull10Dist)){
  for(i in 2:(ncol(Bull10Dist)-2)){
    Bull10Dist[j,i]=sqrt((111.319*(BullData[j,20]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,21]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull10Dist[j,ncol(Bull10Dist)-1]=min(sqrt((111.319*(BullData[j,20]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,21]-ZambeziRiver[,2]))^2))
  Bull10Dist[j,ncol(Bull10Dist)]=min(sqrt((111.319*(BullData[j,20]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,21]-VictoriaFalls[,2]))^2))
}

Bull12Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull12Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull12Dist)){
  for(i in 2:(ncol(Bull12Dist)-2)){
    Bull12Dist[j,i]=sqrt((111.319*(BullData[j,22]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,23]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull12Dist[j,ncol(Bull12Dist)-1]=min(sqrt((111.319*(BullData[j,22]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,23]-ZambeziRiver[,2]))^2))
  Bull12Dist[j,ncol(Bull12Dist)]=min(sqrt((111.319*(BullData[j,22]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,23]-VictoriaFalls[,2]))^2))
}

Bull13Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull13Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull13Dist)){
  for(i in 2:(ncol(Bull13Dist)-2)){
    Bull13Dist[j,i]=sqrt((111.319*(BullData[j,24]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,25]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull13Dist[j,ncol(Bull13Dist)-1]=min(sqrt((111.319*(BullData[j,24]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,25]-ZambeziRiver[,2]))^2))
  Bull13Dist[j,ncol(Bull13Dist)]=min(sqrt((111.319*(BullData[j,24]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,25]-VictoriaFalls[,2]))^2))
}

Bull14Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull14Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull14Dist)){
  for(i in 2:(ncol(Bull14Dist)-2)){
    Bull14Dist[j,i]=sqrt((111.319*(BullData[j,26]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,27]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull14Dist[j,ncol(Bull14Dist)-1]=min(sqrt((111.319*(BullData[j,26]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,27]-ZambeziRiver[,2]))^2))
  Bull14Dist[j,ncol(Bull14Dist)]=min(sqrt((111.319*(BullData[j,26]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,27]-VictoriaFalls[,2]))^2))
}

Bull15Dist=matrix(NA,nrow=nrow(BullData),ncol=(ncol(BullData)-1)/2+3)
Bull15Dist[,1]=BullData[,1]
for(j in 1:nrow(Bull15Dist)){
  for(i in 2:(ncol(Bull15Dist)-2)){
    Bull15Dist[j,i]=sqrt((111.319*(BullData[j,28]-BullData[j,2*(i-1)]))^2+(96.405*(BullData[j,29]-BullData[j,2*(i-1)+1]))^2)
  }
  Bull15Dist[j,ncol(Bull15Dist)-1]=min(sqrt((111.319*(BullData[j,28]-ZambeziRiver[,1]))^2+(96.405*(BullData[j,29]-ZambeziRiver[,2]))^2))
  Bull15Dist[j,ncol(Bull15Dist)]=min(sqrt((111.319*(BullData[j,28]-VictoriaFalls[,1]))^2+(96.405*(BullData[j,29]-VictoriaFalls[,2]))^2))
}


BullData$Date=as.Date(as.POSIXct(BullData$Date,origin="1970-01-01"))
Bull1Dist[,1]=BullData$Date
Bull2Dist[,1]=BullData$Date
Bull3Dist[,1]=BullData$Date
Bull4Dist[,1]=BullData$Date
Bull5Dist[,1]=BullData$Date
Bull6Dist[,1]=BullData$Date
Bull7Dist[,1]=BullData$Date
Bull8Dist[,1]=BullData$Date
Bull9Dist[,1]=BullData$Date
Bull10Dist[,1]=BullData$Date
Bull12Dist[,1]=BullData$Date
Bull13Dist[,1]=BullData$Date
Bull14Dist[,1]=BullData$Date
Bull15Dist[,1]=BullData$Date

Names=c("Date","Distance_to_Bull_1","Distance_to_Bull_2","Distance_to_Bull_3","Distance_to_Bull_4","Distance_to_Bull_5","Distance_to_Bull_6","Distance_to_Bull_7","Distance_to_Bull_8","Distance_to_Bull_9","Distance_to_Bull_10","Distance_to_Bull_12","Distance_to_Bull_13","Distance_to_Bull_14","Distance_to_Bull_15","Distance_to_Zambezi_River","Distance_to_Victoria_Falls")
colnames(Bull1Dist)=Names
colnames(Bull2Dist)=Names
colnames(Bull3Dist)=Names
colnames(Bull4Dist)=Names
colnames(Bull5Dist)=Names
colnames(Bull6Dist)=Names
colnames(Bull7Dist)=Names
colnames(Bull8Dist)=Names
colnames(Bull9Dist)=Names
colnames(Bull10Dist)=Names
colnames(Bull12Dist)=Names
colnames(Bull13Dist)=Names
colnames(Bull14Dist)=Names
colnames(Bull15Dist)=Names

Bull1Dist=data.frame(Bull1Dist)
Bull2Dist=data.frame(Bull2Dist)
Bull3Dist=data.frame(Bull3Dist)
Bull4Dist=data.frame(Bull4Dist)
Bull5Dist=data.frame(Bull5Dist)
Bull6Dist=data.frame(Bull6Dist)
Bull7Dist=data.frame(Bull7Dist)
Bull8Dist=data.frame(Bull8Dist)
Bull9Dist=data.frame(Bull9Dist)
Bull10Dist=data.frame(Bull10Dist)
Bull12Dist=data.frame(Bull12Dist)
Bull13Dist=data.frame(Bull13Dist)
Bull14Dist=data.frame(Bull14Dist)
Bull15Dist=data.frame(Bull15Dist)

write.csv(BullData,"data/BullData.csv")
write.csv(Bull1Dist,"data/Bull1Dist.csv")
write.csv(Bull2Dist,"data/Bull2Dist.csv")
write.csv(Bull3Dist,"data/Bull3Dist.csv")
write.csv(Bull4Dist,"data/Bull4Dist.csv")
write.csv(Bull5Dist,"data/Bull5Dist.csv")
write.csv(Bull6Dist,"data/Bull6Dist.csv")
write.csv(Bull7Dist,"data/Bull7Dist.csv")
write.csv(Bull8Dist,"data/Bull8Dist.csv")
write.csv(Bull9Dist,"data/Bull9Dist.csv")
write.csv(Bull10Dist,"data/Bull10Dist.csv")
write.csv(Bull12Dist,"data/Bull12Dist.csv")
write.csv(Bull13Dist,"data/Bull13Dist.csv")
write.csv(Bull14Dist,"data/Bull14Dist.csv")
write.csv(Bull15Dist,"data/Bull15Dist.csv")

ts.plot(Bull1Dist$Distance_to_Bull_6,xlab="Time (Days since May 1, 2019)",ylab="Distance (km) between Bull 1 and 6")
ts.plot(Bull2Dist$Distance_to_Zambezi_River,xlab="Time (Days since May 1, 2019)",ylab="Distance (km) between Bull2 and Zambezi River",col="Blue")
ts.plot(Bull12Dist$Distance_to_Victoria_Falls,xlab="Time (Days since May 1, 2019)",ylab="Distance (km) between Bull12 and Victoria Falls",col="Red")

as.Date(BullData[,1])

plot(VictoriaFalls$LONGITUDE,VictoriaFalls$LATITUDE)
VFLongMean=mean(VictoriaFalls$LONGITUDE)
VFLatMean=mean(VictoriaFalls$LATITUDE)
plot(c(VictoriaFalls$LONGITUDE,VFLongMean),c(VictoriaFalls$LATITUDE,VFLatMean))

VFRad=max(sqrt((111.319*(VFLatMean-VictoriaFalls$LATITUDE))^2+(96.405*(VFLongMean-VictoriaFalls$LONGITUDE))^2))

#Bull 1 Tier Circle
Bull1Dist$Circle=NA
for (i in 1:nrow(Bull1Dist)){
  if (!is.na(BullData$Lat1[i])){
  if (sqrt((111.319*(VFLatMean-BullData$Lat1[i]))^2+(96.405*(VFLongMean-BullData$Long1[i]))^2)<VFRad){
    Bull1Dist$Circle[i]=1
  }
  else if (sqrt((111.319*(VFLatMean-BullData$Lat1[i]))^2+(96.405*(VFLongMean-BullData$Long1[i]))^2)<2*VFRad){
    Bull1Dist$Circle[i]=2
  }
  else if (sqrt((111.319*(VFLatMean-BullData$Lat1[i]))^2+(96.405*(VFLongMean-BullData$Long1[i]))^2)<3*VFRad){
    Bull1Dist$Circle[i]=3
  }
  else if (sqrt((111.319*(VFLatMean-BullData$Lat1[i]))^2+(96.405*(VFLongMean-BullData$Long1[i]))^2)<4*VFRad){
    Bull1Dist$Circle[i]=4
  }
  else{
    Bull1Dist$Circle[i]=5
  }
  }
  else{
    Bull1Dist$Circle[i]=NA
  }
}

#Bull2 Tier Circle
Bull2Dist$Circle=NA
for (i in 1:nrow(Bull2Dist)){
  if (!is.na(BullData$Lat2[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat2[i]))^2+(96.405*(VFLongMean-BullData$Long2[i]))^2)<VFRad){
      Bull2Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat2[i]))^2+(96.405*(VFLongMean-BullData$Long2[i]))^2)<2*VFRad){
      Bull2Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat2[i]))^2+(96.405*(VFLongMean-BullData$Long2[i]))^2)<3*VFRad){
      Bull2Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat2[i]))^2+(96.405*(VFLongMean-BullData$Long2[i]))^2)<4*VFRad){
      Bull2Dist$Circle[i]=4
    }
    else{
      Bull2Dist$Circle[i]=5
    }
  }
  else{
    Bull2Dist$Circle[i]=NA
  }
}

#Bull3 Tier Circle
Bull3Dist$Circle=NA
for (i in 1:nrow(Bull3Dist)){
  if (!is.na(BullData$Lat3[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat3[i]))^2+(96.405*(VFLongMean-BullData$Long3[i]))^2)<VFRad){
      Bull3Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat3[i]))^2+(96.405*(VFLongMean-BullData$Long3[i]))^2)<2*VFRad){
      Bull3Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat3[i]))^2+(96.405*(VFLongMean-BullData$Long3[i]))^2)<3*VFRad){
      Bull3Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat3[i]))^2+(96.405*(VFLongMean-BullData$Long3[i]))^2)<4*VFRad){
      Bull3Dist$Circle[i]=4
    }
    else{
      Bull3Dist$Circle[i]=5
    }
  }
  else{
    Bull3Dist$Circle[i]=NA
  }
}

#Bull4 Tier Circle
Bull4Dist$Circle=NA
for (i in 1:nrow(Bull4Dist)){
  if (!is.na(BullData$Lat4[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat4[i]))^2+(96.405*(VFLongMean-BullData$Long4[i]))^2)<VFRad){
      Bull4Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat4[i]))^2+(96.405*(VFLongMean-BullData$Long4[i]))^2)<2*VFRad){
      Bull4Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat4[i]))^2+(96.405*(VFLongMean-BullData$Long4[i]))^2)<3*VFRad){
      Bull4Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat4[i]))^2+(96.405*(VFLongMean-BullData$Long4[i]))^2)<4*VFRad){
      Bull4Dist$Circle[i]=4
    }
    else{
      Bull4Dist$Circle[i]=5
    }
  }
  else{
    Bull4Dist$Circle[i]=NA
  }
}

#Bull5 Tier Circle
Bull5Dist$Circle=NA
for (i in 1:nrow(Bull5Dist)){
  if (!is.na(BullData$Lat5[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat5[i]))^2+(96.405*(VFLongMean-BullData$Long5[i]))^2)<VFRad){
      Bull5Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat5[i]))^2+(96.405*(VFLongMean-BullData$Long5[i]))^2)<2*VFRad){
      Bull5Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat5[i]))^2+(96.405*(VFLongMean-BullData$Long5[i]))^2)<3*VFRad){
      Bull5Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat5[i]))^2+(96.405*(VFLongMean-BullData$Long5[i]))^2)<4*VFRad){
      Bull5Dist$Circle[i]=4
    }
    else{
      Bull5Dist$Circle[i]=5
    }
  }
  else{
    Bull2Dist$Circle[i]=NA
  }
}

#Bull6 Tier Circle
Bull6Dist$Circle=NA
for (i in 1:nrow(Bull6Dist)){
  if (!is.na(BullData$Lat6[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat6[i]))^2+(96.405*(VFLongMean-BullData$Long6[i]))^2)<VFRad){
      Bull6Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat6[i]))^2+(96.405*(VFLongMean-BullData$Long6[i]))^2)<2*VFRad){
      Bull6Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat6[i]))^2+(96.405*(VFLongMean-BullData$Long6[i]))^2)<3*VFRad){
      Bull6Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat6[i]))^2+(96.405*(VFLongMean-BullData$Long6[i]))^2)<4*VFRad){
      Bull6Dist$Circle[i]=4
    }
    else{
      Bull6Dist$Circle[i]=5
    }
  }
  else{
    Bull6Dist$Circle[i]=NA
  }
}

#Bull7 Tier Circle
Bull7Dist$Circle=NA
for (i in 1:nrow(Bull2Dist)){
  if (!is.na(BullData$Lat7[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat7[i]))^2+(96.405*(VFLongMean-BullData$Long7[i]))^2)<VFRad){
      Bull7Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat7[i]))^2+(96.405*(VFLongMean-BullData$Long7[i]))^2)<2*VFRad){
      Bull7Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat7[i]))^2+(96.405*(VFLongMean-BullData$Long7[i]))^2)<3*VFRad){
      Bull7Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat7[i]))^2+(96.405*(VFLongMean-BullData$Long7[i]))^2)<4*VFRad){
      Bull7Dist$Circle[i]=4
    }
    else{
      Bull7Dist$Circle[i]=5
    }
  }
  else{
    Bull7Dist$Circle[i]=NA
  }
}

#Bull8 Tier Circle
Bull8Dist$Circle=NA
for (i in 1:nrow(Bull8Dist)){
  if (!is.na(BullData$Lat8[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat8[i]))^2+(96.405*(VFLongMean-BullData$Long8[i]))^2)<VFRad){
      Bull8Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat8[i]))^2+(96.405*(VFLongMean-BullData$Long8[i]))^2)<2*VFRad){
      Bull8Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat8[i]))^2+(96.405*(VFLongMean-BullData$Long8[i]))^2)<3*VFRad){
      Bull8Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat8[i]))^2+(96.405*(VFLongMean-BullData$Long8[i]))^2)<4*VFRad){
      Bull8Dist$Circle[i]=4
    }
    else{
      Bull8Dist$Circle[i]=5
    }
  }
  else{
    Bull8Dist$Circle[i]=NA
  }
}

#Bull9 Tier Circle
Bull9Dist$Circle=NA
for (i in 1:nrow(Bull9Dist)){
  if (!is.na(BullData$Lat9[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat9[i]))^2+(96.405*(VFLongMean-BullData$Long9[i]))^2)<VFRad){
      Bull9Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat9[i]))^2+(96.405*(VFLongMean-BullData$Long9[i]))^2)<2*VFRad){
      Bull9Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat9[i]))^2+(96.405*(VFLongMean-BullData$Long9[i]))^2)<3*VFRad){
      Bull9Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat9[i]))^2+(96.405*(VFLongMean-BullData$Long9[i]))^2)<4*VFRad){
      Bull9Dist$Circle[i]=4
    }
    else{
      Bull9Dist$Circle[i]=5
    }
  }
  else{
    Bull9Dist$Circle[i]=NA
  }
}

#Bull 10 Tier Circle
Bull10Dist$Circle=NA
for (i in 1:nrow(Bull10Dist)){
  if (!is.na(BullData$Lat10[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat10[i]))^2+(96.405*(VFLongMean-BullData$Long10[i]))^2)<VFRad){
      Bull10Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat10[i]))^2+(96.405*(VFLongMean-BullData$Long10[i]))^2)<2*VFRad){
      Bull10Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat10[i]))^2+(96.405*(VFLongMean-BullData$Long10[i]))^2)<3*VFRad){
      Bull10Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat10[i]))^2+(96.405*(VFLongMean-BullData$Long10[i]))^2)<4*VFRad){
      Bull10Dist$Circle[i]=4
    }
    else{
      Bull10Dist$Circle[i]=5
    }
  }
  else{
    Bull10Dist$Circle[i]=NA
  }
}
#Bull 12 Tier Circle
Bull12Dist$Circle=NA
for (i in 1:nrow(Bull12Dist)){
  if (!is.na(BullData$Lat12[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat12[i]))^2+(96.405*(VFLongMean-BullData$Long12[i]))^2)<VFRad){
      Bull12Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat12[i]))^2+(96.405*(VFLongMean-BullData$Long12[i]))^2)<2*VFRad){
      Bull12Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat12[i]))^2+(96.405*(VFLongMean-BullData$Long12[i]))^2)<3*VFRad){
      Bull12Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat12[i]))^2+(96.405*(VFLongMean-BullData$Long12[i]))^2)<4*VFRad){
      Bull12Dist$Circle[i]=4
    }
    else{
      Bull12Dist$Circle[i]=5
    }
  }
  else{
    Bull12Dist$Circle[i]=NA
  }
}

#Bull 13 Tier Circle
Bull13Dist$Circle=NA
for (i in 1:nrow(Bull13Dist)){
  if (!is.na(BullData$Lat13[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat13[i]))^2+(96.405*(VFLongMean-BullData$Long13[i]))^2)<VFRad){
      Bull13Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat13[i]))^2+(96.405*(VFLongMean-BullData$Long13[i]))^2)<2*VFRad){
      Bull13Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat13[i]))^2+(96.405*(VFLongMean-BullData$Long13[i]))^2)<3*VFRad){
      Bull13Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat13[i]))^2+(96.405*(VFLongMean-BullData$Long13[i]))^2)<4*VFRad){
      Bull13Dist$Circle[i]=4
    }
    else{
      Bull13Dist$Circle[i]=5
    }
  }
  else{
    Bull13Dist$Circle[i]=NA
  }
}

#Bull 14 Tier Circle
Bull14Dist$Circle=NA
for (i in 1:nrow(Bull14Dist)){
  if (!is.na(BullData$Lat14[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat14[i]))^2+(96.405*(VFLongMean-BullData$Long14[i]))^2)<VFRad){
      Bull14Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat14[i]))^2+(96.405*(VFLongMean-BullData$Long14[i]))^2)<2*VFRad){
      Bull14Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat14[i]))^2+(96.405*(VFLongMean-BullData$Long14[i]))^2)<3*VFRad){
      Bull14Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat14[i]))^2+(96.405*(VFLongMean-BullData$Long14[i]))^2)<4*VFRad){
      Bull14Dist$Circle[i]=4
    }
    else{
      Bull14Dist$Circle[i]=5
    }
  }
  else{
    Bull14Dist$Circle[i]=NA
  }
}

#Bull 15 Tier Circle
Bull15Dist$Circle=NA
for (i in 1:nrow(Bull15Dist)){
  if (!is.na(BullData$Lat15[i])){
    if (sqrt((111.319*(VFLatMean-BullData$Lat15[i]))^2+(96.405*(VFLongMean-BullData$Long15[i]))^2)<VFRad){
      Bull15Dist$Circle[i]=1
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat15[i]))^2+(96.405*(VFLongMean-BullData$Long15[i]))^2)<2*VFRad){
      Bull15Dist$Circle[i]=2
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat15[i]))^2+(96.405*(VFLongMean-BullData$Long15[i]))^2)<3*VFRad){
      Bull15Dist$Circle[i]=3
    }
    else if (sqrt((111.319*(VFLatMean-BullData$Lat15[i]))^2+(96.405*(VFLongMean-BullData$Long15[i]))^2)<4*VFRad){
      Bull15Dist$Circle[i]=4
    }
    else{
      Bull15Dist$Circle[i]=5
    }
  }
  else{
    Bull15Dist$Circle[i]=NA
  }
}
View(Bull15Dist)
