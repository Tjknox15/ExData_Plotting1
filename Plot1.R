setwd("C:/Users/Timothy.Knox/Desktop/Coursera/Exploratory Data Analysis/Course Project 1")

##Read in the data
dataFile <- "./household_power_consumption.txt"
house_data <- read.table(dataFile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

##Subset the data only for dates 2007-02-01 to 2007-02-02
subset_dates <- house_data[house_data$Date %in% c("1/2/2007", "2/2/2007"),]

##Create plot
globalActivePower <- as.numeric(subset_dates$Global_active_power)
png("Plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()

