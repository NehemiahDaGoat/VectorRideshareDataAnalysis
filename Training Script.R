##I installed five packages geared towards testing out r 

install.packages("here")
library(tidyverse)
library(dplyr)
library(ggplot2)
library(pracma)

#I opened the Here library
library(here)

##Opening a CSV file the Long Way
LongWay<-read.csv("C:/Users/14434/Desktop/VectorRideshareDataAnalysis/Coding Ready Data.csv")

##Here, I uploaded a CSV through the Read.csv function
TestFile<-read.csv(here("Coding Ready Data.csv"))
X<-TestFile$WaveNum

Date<-Testfile$DateTime
class(Date)

##Let's Make a Plot
TestPlot<-ggplot(data = Testfile, aes())