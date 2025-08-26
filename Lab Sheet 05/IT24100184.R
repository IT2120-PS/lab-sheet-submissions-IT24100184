getwd()

setwd("C:\\Users\\IT24100184\\Desktop\\IT24100184")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt",header=TRUE,sep = ",")
names(Delivery_Times)[1] <- "Delivery_Times"
head(Delivery_Times)

hist(Delivery_Times$Delivery_Times, 
     breaks = seq(20, 70, by = 5), 
     right = TRUE,
     col = "lightblue",
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Times",
     ylab = "Frequency")


freq <- hist(Delivery_Times$Delivery_Times, 
             breaks = seq(20, 70, by = 5), 
             right = TRUE, 
             plot = FALSE)

cum_freq <- cumsum(freq$counts)

plot(freq$mids, cum_freq, type = "o", col = "red", 
     main = "Cumulative Frequency Polygon (Ogive) - Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")