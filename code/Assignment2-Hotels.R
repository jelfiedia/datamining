#Set working directory
setwd("D:/Master/Data Mining/Ass2")

#Read training and test data from the .csv files in the working directory
# train.hotels <- read.csv("Data/training_set_VU_DM_2014.csv", header = T, stringsAsFactors = F)
# test.hotels <- read.csv("Data/test_set_VU_DM_2014.csv", header = T, stringsAsFactors = F)
# save.image('traintest.Rdata')

#read data from the environment, as it is a large dataset
load("traintest.RData")

######################################################
#                 Data Understanding                 #
######################################################

library(doMC)
registerDoMC(4)

#first create a summary of the training dataset
summary(train.hotels)

#JALLODADFASDFsdfsf

plot(train.hotels)


#Check for missing values
library(VIM)
library(Amelia)
missmap(train.hotels)


barMiss(train.hotels)
