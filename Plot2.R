setwd("C:/Users/Timothy.Knox/Desktop/Coursera/Exploratory Data Analysis/Course Project 1")

##Read in the data
dataFile <- "./household_power_consumption.txt"
house_data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

##Subset the data only for dates 2007-02-01 to 2007-02-02
subset_dates <- house_data[house_data$Date %in% c("1/2/2007", "2/2/2007"),]

##Create Plot
globalActivePower <- as.numeric(subset_dates$Global_active_power)
dateTime <- strptime(paste(subset_dates$Date, subset_dates$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("Plot2.png", width = 480, height = 480)
plot(dateTime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

