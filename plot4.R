t=read.csv("household_power_consumption_reduced.csv", sep = ";",na.strings=c("?"))
#t$Date=as.Date(t$Date,format = "%d/%m/%Y")
#t$Time=strptime(t$Time, "%H:%M:%S")
t$DT=strptime(paste(t$Date ," ", t$Time),"%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2))
with(t,plot(DT,Global_active_power, type="l",col="black",xlab="",ylab="Global Active Power (KW)"))
with(t,plot(DT,Voltage, type="l",col="black",xlab="",ylab="Voltage"))
with(t,plot(DT,Sub_metering_1, type="l",col="black",xlab="",ylab="Energy Sub Metering"))
with(t,lines(DT,Sub_metering_2, type="l",col="red",xlab="",ylab="Energy Sub Metering"))
with(t,lines(DT,Sub_metering_3, type="l",col="blue",xlab="",ylab="Energy Sub Metering"))
legend("topright", pch = "-", cex=0.35,col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
with(t,plot(DT,Global_reactive_power, type="l",col="black",xlab="",ylab="Global Reactive Power (KW)"))

# copy to device
dev.copy(png, file = "plot4.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!