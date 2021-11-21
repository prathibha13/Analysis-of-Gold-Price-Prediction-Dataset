library(dplyr)
library(tidyr)
library(ggplot2)

data=read.csv("C:/Users/prathibha k s/Downloads/Gold Price.csv")

head(data)

which(is.na(data)) # no missing data

summary(data)

str(data)

options(repr.plot.width=20 ,repr.plot.height= 10)  # graph dimensions

plot(data$Date,data$Price)
lines(data$Price,col='red')

plot(data$Date,data$Open)
lines(data$Open,col='orange')

plot(data$Date,data$Low)
lines(data$Low,col='purple')

plot(data$Date,data$High)
lines(data$High,col='green')

plot(data$Date,data$Volume)
lines(data$Volume,col='violet')

plot(data$Date,data$Chg)
lines(data$Chg,col='gray')

data$Date = as.Date(data$Date,"%Y-%m-%d")
data1= mutate(data, Year = format(Date,"%Y")) # sorting by year
data2= mutate(data, Month = format(Date,"%m")) # sorting by month

##Sample

plot(data1$Date,data1$Price) 
lines(data1$Price,col='red')

max(data$Chg)

data[which(data1$Chg == 5.3),] ## 2016 marks highest % change in gold price value

max(data$Volume) 

data[which(data1$Volume == 106920),] # maximum volume trading happened during march 2020

data[which(data1$Price == min(data$Price)),] # we can see the gold price was minimum during august 2015 with a final price of 24545

data[which(data1$Price == max(data$Price)),] # the gold price was maximum during august 2020 with a value of 56117


