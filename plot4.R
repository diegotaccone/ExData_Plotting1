## Set for multiple plots, 2 rows and 2 columns.
par(mfrow = c(2,2))

## First Plot
with(power,plot(datetime,Global_active_power,type="l",ylab ="Global Active Power kilowatts",xlab=""))

## Second Plot
with(power,plot(datetime,Voltage,type ="l",xlab = "datetime"))

## Third Plot
with(power,plot(datetime,Sub_metering_1,type = "l",ylab ="Energy sub metering",xlab="",col="black"))
with(power,points(datetime,Sub_metering_2,type="l",col="red"))
with(power,points(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright",lty = 1, col = c("black","red","blue"),legend = c("Sub_metering_1",
       "Sub_metering_2","Sub_metering_3"),bty ="n",cex = 0.8,y.intersp = -0.15)

#Fourth Plot
with(power,plot(datetime,Global_reactive_power,type ="l",xlab = "datetime"))

dev.copy(png,file ="plot4.png")
dev.off()