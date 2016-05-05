# Clean up workspace
rm(list=ls())
#set working directory 
setwd('/home/lambao/projetos/projetos_R/exploratorydata');
## Download and unzip the dataset:
filename <- "household_power_consumption.zip"
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("household_power_consumption.txt")) { 
  unzip(filename) 
}
## read subset data
if (!file.exists("house_power_cons.rds")) { 
  data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", colClasses=c("character", "character", rep("numeric",7)), na="?")
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  filterDate <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  data <- subset(data, Date %in% filterDate)
  saveRDS(data, "house_power_cons.rds")
}

data <- readRDS("house_power_cons.rds")

