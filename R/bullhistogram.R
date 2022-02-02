library(ggplot2)

bull2019 <- read.csv("data/BullData2019.csv")
bull2020 <- read.csv("data/BullData2020.csv")
names(bull2020)[2] <- 'Time'
bull2021 <- read.csv("data/BullData2021.csv")

bigbull <- rbind(bull2019[c(2,3,4,5,6)],bull2020[c(2,3,4,5,6)],bull2021[c(2,3,4,5,6)])

ggplot(bigbull, aes(x = BulNum)) + geom_histogram(colour = 4, fill = 'grey', bins = 15, binwidth = .5) + xlab("Bull Number") + ggtitle("Number of Tracking Data Points per Bull") + theme_classic()
