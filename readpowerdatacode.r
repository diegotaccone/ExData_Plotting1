##Load dplyr package
library(dplyr)
##Read in data from txt
power <- read.table("./exdata_data_household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE)
##Dates
power$datetime <- paste(power$Date,power$Time)
power$datetime <- strptime(power$datetime, "%d/%m/%Y %H:%M:%S",tz="UTC")
power$datetime <- as.POSIXct.POSIXlt(power$datetime)

##Filter & Tidy
power <- filter(power,as.Date(power$datetime) == "2007-02-01" | as.Date(power$datetime) == "2007-02-02")
power <- select(power,datetime,Global_active_power:Sub_metering_3)

##Prepare Data
power$Global_active_power <- as.numeric(as.character(power$Global_active_power))
power$Global_reactive_power <- as.numeric(as.character(power$Global_reactive_power))
power$Voltage <- as.numeric(as.character(power$Voltage))
power$Sub_metering_1 <- as.numeric(as.character(power$Sub_metering_1))
power$Sub_metering_2 <- as.numeric(as.character(power$Sub_metering_2))
power$Sub_metering_3 <- as.numeric(as.character(power$Sub_metering_3))

