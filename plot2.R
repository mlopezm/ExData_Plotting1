t=read.csv("household_power_consumption_reduced.csv", sep = ";",na.strings=c("?"))
#t$Date=as.Date(t$Date,format = "%d/%m/%Y")
#t$Time=strptime(t$Time, "%H:%M:%S")
t$DT=strptime(paste(t$Date ," ", t$Time),"%d/%m/%Y %H:%M:%S")

with(t,plot(DT,Global_active_power, type="l",col="black",xlab="",ylab="Global Active Power (KW)"))

# copy to device
dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!