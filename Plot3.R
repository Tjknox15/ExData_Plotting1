setwd("C:/Users/Timothy.Knox/Desktop/Coursera/Exploratory Data Analysis/Course Project 1")

##Read in the data
dataFile <- "./household_power_consumption.txt"
house_data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

##Subset the data only for dates 2007-02-01 to 2007-02-02
subset_dates <- house_data[house_data$Date %in% c("1/2/2007", "2/2/2007"),]

##Create Plot
dateTime <- strptime(paste(subset_dates$Date, subset_dates$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
subMetering1 <- as.numeric(subset_dates$Sub_metering_1)
subMetering2 <- as.numeric(subset_dates$Sub_metering_2)
subMetering3 <- as.numeric(subset_dates$Sub_metering_3)

png("Plot3.png", width = 480, height = 480)
plot(dateTime, subMetering1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, subMetering2, type = "l", col = "red")
lines(dateTime, subMetering3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()