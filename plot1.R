
#Create Histogram
hist(power$Global_active_power,col= "red",main = "Global Active Power",
xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
##Copy to PNG file
dev.copy(png,file ="plot1.png")
dev.off()