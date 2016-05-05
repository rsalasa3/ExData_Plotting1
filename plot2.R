#set working directory 
setwd('/home/lambao/projetos/projetos_R/exploratorydata')
source('getFile.R')
plot2 <- paste(getwd(), "plot2.png", sep = "")

if(!file.exists(plot2)){
  png("plot2.png", width = 480, height = 480)
  plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  dev.off()
} else {
  plot(data$Time, cargardatos$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}