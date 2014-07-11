t=read.csv("household_power_consumption_reduced.csv", sep = ";",na.strings=c("?"))
#t$Date=as.Date(t$Date,format = "%d/%m/%Y")
#t$Time=strptime(t$Time, "%H:%M:%S")
t$DT=strptime(paste(t$Date ," ", t$Time),"%d/%m/%Y %H:%M:%S")

with(t,plot(DT,Sub_metering_1, type="l",col="black",xlab="",ylab="Energy Sub Metering"))
with(t,lines(DT,Sub_metering_2, type="l",col="red",xlab="",ylab="Energy Sub Metering"))
with(t,lines(DT,Sub_metering_3, type="l",col="blue",xlab="",ylab="Energy Sub Metering"))
legend("topright", pch = "---", col = c("black","red","blue"),, legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# copy to device
dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!