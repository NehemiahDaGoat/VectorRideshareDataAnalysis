##I installed five packages geared towards testing out r 

install.packages("here")
library(tidyverse)
library(dplyr)
library(ggplot2)
library(pracma)

#I opened the Here library
library(here)
library(plotly)
here()

##Opening a CSV file the Long Way
LongWay<-read.csv("C:/Users/14434/Desktop/VectorRideshareDataAnalysis/Coding Ready Data.csv")

##Here, I uploaded a CSV through the Read.csv function
TestFile<-read.csv(here("Coding Ready Data.csv"))
Wagging<-TestFile[c(1000:25000),]


Wavey<-Wagging$WaveNum
Transmit<-Wagging$PCT_Transmit

##Let's Make a Plot
FTIR<-read.csv(here("Coding Ready Data.csv"))
Wavenumber<-FTIR$WaveNum
Transmit<-FTIR$PCT_Transmit


##Format of GGPLOT function [ggplot(data,aes(x,y))+geom_point()
TestPlot<-ggplot(FTIR,aes(Wavenumber,Transmit))+
  geom_point()
TestPlot     

##Make a new data table, that is a subset of the larger data table.
Wagging<- FTIR[c(11000:30000),]
Wavenumber2<-Wagging$WaveNum
Transmit2<-Wagging$PCT_Transmit
TestPlot2<-ggplot(Wagging,aes(Wavenumber2,Transmit2))+
  geom_point()
TestPlot2
