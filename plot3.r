# Reading and subsetting power consumption data
power <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,dec=".",header = TRUE,sep=";")
subset_power <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
Global_active_power<-as.numeric(subset_power$Global_active_power)
Sub_metering_1 <- as.numeric(subset_power$Sub_metering_1)
Sub_metering_2 <- as.numeric(subset_power$Sub_metering_2)
Sub_metering_3 <- as.numeric(subset_power$Sub_metering_3)
x<-paste(subset_power$Date, subset_power$Time, sep=" ")
date_time <- strptime(x,"%d/%m/%Y %H:%M:%S") 

# calling the basic plot function
png("plot2.png", width=480, height=480)
plot(date_time, Sub_metering_1, type="l", xlab="",ylab="Energy Sub metering")
lines(date_time, Sub_metering_2, type="l", col="red")
lines(date_time, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))
dev.off()
