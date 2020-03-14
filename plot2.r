# Reading and subsetting power consumption data
power <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,dec=".",header = TRUE,sep=";")
subset_power <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
Global_active_power<-as.numeric(subset_power$Global_active_power)
x<-paste(subset_power$Date, subset_power$Time, sep=" ")
date_time <- strptime(x,"%d/%m/%Y %H:%M:%S") 

# calling the basic plot function
png("plot2.png", width=480, height=480)
plot(date_time,Global_active_power,type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()