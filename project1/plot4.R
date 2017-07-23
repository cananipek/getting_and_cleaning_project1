#Convert Global_reactive_power into a numeric variable
data1$Global_reactive_power <- as.numeric(as.character(data1$Global_reactive_power))

#Convert Voltage into a numeric variable
data1$Voltage <- as.numeric(as.character(data1$Voltage))

#open .png file
png(file = "plot4.png", height = 480, width = 480)

#divide plot screen into 2 rows 2 columns
par(mfrow = c(2,2))

#Generate first graph
plot(x = data1$DateTime, y= data1$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power")

#Generate second graph
plot(x = data1$DateTime, y = data1$Voltage, type = "l", xlab = "datetime",
     ylab = "Voltage")

#Generate third graph
plot(x = data1$DateTime, y = data1$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")
lines(x = data1$DateTime, y = data1$Sub_metering_2, col = "red")
lines(x = data1$DateTime, y = data1$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black","red","blue"), lty = 1)
#Generate fourth graph
plot(x = data1$DateTime, y = data1$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")
#Close the .png device
dev.off()
