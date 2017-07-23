#Convert sub_metering columns into numeric
data1$Sub_metering_1 <- as.numeric(as.character(data1$Sub_metering_1))
data1$Sub_metering_2 <- as.numeric(as.character(data1$Sub_metering_2))
data1$Sub_metering_3 <- as.numeric(as.character(data1$Sub_metering_3))

#open the .png file and create the graph 
png(file = "plot3.png", width = 480, height = 480)
plot(x = data1$DateTime, y = data1$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")
lines(x = data1$DateTime, y = data1$Sub_metering_2, col = "red")
lines(x = data1$DateTime, y = data1$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black","red","blue"), lty = 1)
dev.off()