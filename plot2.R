##Create Plot.
with(power,plot(datetime,Global_active_power,type="l",ylab ="Global Active Power kilowatts",xlab=""))

##Copy to png file.
dev.copy(png,file ="plot2.png")
dev.off()
