#set working directory 
setwd('/home/lambao/projetos/projetos_R/exploratorydata')
source('getFile.R')
plot3 <- paste(getwd(), "plot3.png", sep = "")

if(!file.exists(plot3)){
  png("plot3.png", width = 480, height = 480)
  plot(data$Time, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(data$Time, data$Sub_metering_2, type="l", col="red")
  lines(data$Time, data$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
  dev.off()
} else {
  plot(data$Time, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(data$Time, data$Sub_metering_2, type="l", col="red")
  lines(data$Time, data$Sub_metering_3, type="l", col="blue")
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
}