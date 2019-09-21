#analysis of household electric power consumption data set

library(lubridate)
rawdata <- read.csv("household_power_consumption.txt",
sep = ";", dec = ".", na.strings = "?",
header = TRUE)

# subset data -- 2/1/2007 to 2/2/2007 for analysis
workdata <- subset(rawdata, Date=="1/2/2007"| Date =="2/2/2007")

# concatenate the data and time field from rawdata to new datetime column
workdata$datetime<- dmy_hms(paste(workdata$Date,workdata$Time))

# 3 line graph of sub metering data over timeframe
with(workdata, plot(datetime, Sub_metering_1 , type = "l",
                    xlab = "", ylab = "Energy sub metering"))
with(workdata, lines(datetime, Sub_metering_2 , type = "l", 
                     col = "red"))
with(workdata, lines(datetime, Sub_metering_3 , type = "l", 
                     col = "blue"))
legend(x = "topright", xjust = 1, lty = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red", "blue"))

#create output .png file
png(filename = "plot3.png", width = 480, height = 480)

with(workdata, plot(datetime, Sub_metering_1 , type = "l",
                    xlab = "", ylab = "Energy sub metering"))
with(workdata, lines(datetime, Sub_metering_2 , type = "l", 
                     col = "red"))
with(workdata, lines(datetime, Sub_metering_3 , type = "l", 
                     col = "blue"))
legend(x = "topright", xjust = 1, lty = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red", "blue"))

dev.off()
