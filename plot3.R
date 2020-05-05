##Create plot.
with(power,plot(datetime,Sub_metering_1,type = "l",ylab ="Energy sub metering",xlab="",col="black"))
## Add second set of data.
with(power,points(datetime,Sub_metering_2,type="l",col="red"))
## Add third set of data.
with(power,points(datetime,Sub_metering_3,type="l",col="blue"))
#Add Legend.
legend("topright",lty = 1, col = c("black","red","blue"),legend = c("Sub_metering_1",
"Sub_metering_2","Sub_metering_3"),cex = 0.85,y.intersp = 0.3)

##Copy to png file.
dev.copy(png,file ="plot3.png")
dev.off()
