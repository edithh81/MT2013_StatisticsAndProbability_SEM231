# add library 
library(stringr)
library(tidyr)
library(dplyr)

# import data
path<-'D:/K22_KHMT_HCMUT/HK231/XSTK/Assignment/Intel_CPUs.csv'
CPU<-read.csv(path)

# get some variables to proccess
CPU<-CPU[, c("Launch_Date", "Recommended_Customer_Price", "nb_of_Cores", "nb_of_Threads", 
             "Processor_Base_Frequency", "Max_Memory_Size", "Instruction_Set")]
head(CPU)

# count NA rows
colSums(is.na(CPU))
