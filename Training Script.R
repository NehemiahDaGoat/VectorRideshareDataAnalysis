##I installed five packages geared towards testing out r 

install.packages("here")
install.packages("tidyverse")
install.packages("dplyr")
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
verticallines<- data.frame(c(827.65,847.6,887.92,908.17,930.89,951.74,971.87,1007.49,1027.01,1046.36,1065.52,1084.51,1095.11,1110.66,1131.88,))


##Make a new data table, that is a subset of the larger data table.
Wagging<- FTIR[c(5810:14106),]
Wavenumber2<-Wagging$WaveNum
Transmit2<-Wagging$PCT_Transmit

##I have made a data table of slope changes in our data set. The variable is called Vertical lines.
verticallines<- data.frame(c(827.65,847.6,887.92,908.17,930.89,951.74,971.87,1007.49,1027.01,1046.36,1065.52,1084.51,1095.11,1110.66,1131.88))

TestPlot2<-ggplot(Wagging,aes(Wavenumber2,Transmit2))+
  geom_point(color="Green",size=2,shape=4)+
  geom_vline(xintercept = 950, color= "Purple",size=1.5)+
  geom_vline(xintercept=827.65, color= "Red",size=1.5)+
  geom_vline(xintercept=847.6,color="Red",size=1.5)+
  geom_vline(xintercept=867.79,color="Red",size=1.5)+
  geom_vline(xintercept = 887.92,color="Red",size=1.5)+
  geom_vline(xintercept=908.17,color="Red",size=1.5)+
  geom_vline(xintercept=933.18,color="Red",size=1.5)+
  geom_vline(xintercept=966.93,color="Red",size=1.5)+
  geom_vline(xintercept=992.94,color="Red",size=1.5)+
  geom_vline(xintercept=1013.15,color="Red",size=1.5)+
  geom_vline(xintercept=1034.12,color="Red",size=1.5)+
  geom_vline(xintercept=1053.11,color="Red",size=1.5)+
  geom_vline(xintercept=1075.95,color="Red",size=1.5)+
  geom_vline(xintercept=1084.51,color="Red",size=1.5)+
  geom_vline(xintercept=1095.11,color="Red",size=1.5)+
  geom_vline(xintercept=1110.66,color="Red",size=1.5)+
  xlab("Wavenumber (cm^-1)")+
  ylab("% of Transmittance")+
  labs(title = "FTIR Spectrum of Ammonia AntiSymmetric Peaks")

TestPlot2
