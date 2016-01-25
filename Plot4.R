HPowerCon<-read.table("C:/Users/Administracion/Desktop/Week1 EDA/household_power_consumption.txt",header=T,sep=";",na.strings=c("?"))
HPowerCon$Date<-as.Date(HPowerCon$Date,format="%d/%m/%Y")
HPowerCon<-HPowerCon[HPowerCon$Date=="2007-02-02"|HPowerCon$Date=="2007-02-01",]
weekdays(HPowerCon$Date,abbreviate = T)
HPowerCon$Global_active_power<-(as.numeric(as.character(HPowerCon$Global_active_power)))
png("plot4.png", width=480, height=480, units="px")
par(mfrow=c(2,2))
with(HPowerCon,plot(Global_active_power,type="l",xlab="",xaxt="n"))
axis(1, at=c(1,nrow(HPowerCon)/2,nrow(HPowerCon)), labels=c("Thu","Fri","Sat"))
#plot 2
plot(data2$Voltage, type="l",xaxt="n",xlab="datetime", ylab="Voltage")
axis(1, at=c(1,nrow(HPowerCon)/2,nrow(HPowerCon)), labels=c("Thu","Fri","Sat"))
#plot 3
with(HPowerCon,plot(as.numeric(Sub_metering_1),type="l",xlab="",xaxt="n",ylab="Energy sub metering"))
lines(HPowerCon$Sub_metering_2,col="red")
lines(HPowerCon$Sub_metering_3,col="blue")
axis(1, at=c(1,nrow(HPowerCon)/2,nrow(HPowerCon)), labels=c("Thu","Fri","Sat"))
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.lwd = 0,box.col = "transparent", bg="transparent")
#plot 4
plot(data2$Global_reactive_power, type="l",xaxt="n",xlab="datetime", ylab="Global_reactive_power")
axis(1, at=c(1,nrow(HPowerCon)/2,nrow(HPowerCon)), labels=c("Thu","Fri","Sat"))
dev.off()
