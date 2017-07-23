if(!file.exists("exdata%2Fdata%2Fhousehold_power_consumption.zip")){
  temp <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp, mode = "wb")
  file <- unzip(temp)
  unlink(temp)
}

df <- read.table(file, header = T, sep = ";")

#Subset the relevant data from df
data1 <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]

#convert Global_active_power into numeric data
data1$Global_active_power <- as.numeric(as.character(data1$Global_active_power))

#Open .png file, create the histogram and save it
png(file = "plot1.png", width = 480, height = 480)
hist(data1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power" )
dev.off()