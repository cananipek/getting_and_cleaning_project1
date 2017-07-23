#load lubridate package

library(lubridate)

#Combine Date and Time variables to create a new column; DateTime
data1$DateTime <- dmy_hms(paste(data1$Date, data1$Time))

#open .png file, plot data, save it
png(file = "plot2.png", width = 480, height = 480)
plot(x = data1$DateTime, y = data1$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
     xlab = "")
dev.off()