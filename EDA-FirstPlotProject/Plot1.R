#analysis of household electric power consumption data set

library(lubridate)
rawdata <- read.csv("household_power_consumption.txt", 
                    sep = ";", dec = ".", na.strings = "?",
                    header = TRUE) 

# subset data -- 2/1/2007 to 2/2/2007 for analysis
workdata <- subset(rawdata, Date=="1/2/2007"| Date =="2/2/2007")

# concatenate the data and time field from rawdata to new datetime column
workdata$datetime<- dmy_hms(paste(workdata$Date,workdata$Time))

# histogram of global active power
with(workdata, hist(Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)" , 
     main = "Global Active Power"))

#create output .png file
png(filename = "plot1.png", width = 480, height = 480)
with(workdata, hist(Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)" , 
     main = "Global Active Power"))
dev.off()

