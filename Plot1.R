HPowerCon<-read.table("C:/Users/Administracion/Desktop/Week1 EDA/household_power_consumption.txt",header=T,sep=";")
HPowerCon$Date<-as.Date(HPowerCon$Date,format="%d/%m/%Y")
HPowerCon<-HPowerCon[HPowerCon$Date=="2007-02-02"|HPowerCon$Date=="2007-02-01",]
HPowerCon$Global_active_power<-(as.numeric(as.character(HPowerCon$Global_active_power)))
png("plot1.png", width=480, height=480, units="px")
with(HPowerCon,hist(Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power", xaxt='n'))
axis(side=1, at=seq(0,6, 2), labels=seq(0,6,2))
dev.off()
