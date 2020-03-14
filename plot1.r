# Reading and subsetting power consumption data
power <- read.table("household_power_consumption.txt",stringsAsFactors=FALSE,dec=".",header = TRUE,sep=";")
subset_power <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
Global_active_power<-as.numeric(subset_power$Global_active_power)

# calling the basic plot function
png("plot1.png", width=480, height=480)
hist(Global_active_power,col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
