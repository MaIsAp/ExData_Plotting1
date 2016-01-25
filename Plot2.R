HPowerCon<-read.table("C:/Users/Administracion/Desktop/Week1 EDA/household_power_consumption.txt",header=T,sep=";")
HPowerCon$Date<-as.Date(HPowerCon$Date,format="%d/%m/%Y")
HPowerCon<-HPowerCon[HPowerCon$Date=="2007-02-02"|HPowerCon$Date=="2007-02-01",]
HPowerCon$Global_active_power<-(as.numeric(as.character(HPowerCon$Global_active_power)))
png("plot2.png", width=480, height=480, units="px")
with(HPowerCon,plot(Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="",xaxt="n"))
axis(1, at=c(1,nrow(HPowerCon)/2,nrow(HPowerCon)), labels=c("Thu","Fri","Sat"))
dev.off()
