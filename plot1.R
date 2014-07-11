t=read.csv("household_power_consumption_reduced.csv", sep = ";",na.strings=c("?"))
#t$Date=as.Date(t$Date,format = "%d/%m/%Y")
#t$Time=strptime(t$Time, "%H:%M:%S")
t$DT=strptime(paste(t$Date ," ", t$Time),"%d/%m/%Y %H:%M:%S")

with(t,hist(Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (KW)"))

# copy to device
dev.copy(png, file = "plot1.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!