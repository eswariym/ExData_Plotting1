# Project, Exploratory Analysis Week 1
HousePower <- "C:/Users/vmuthukr/Documents/Exploratory_Analysis/household_power_consumption.txt"
ConsumptionData <- read.table(HousePower, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsubSet <- ConsumptionData[ConsumptionData$Date %in% c("1/2/2007","2/2/2007"), ]
head(YearsubSet)
str(YearsubSet)
DateTime <- strptime(paste(YearsubSet$Date, YearsubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(YearsubSet$Global_active_power)
Submetering1 <- as.numeric(YearsubSet$Sub_metering_1)
Submetering2 <- as.numeric(YearsubSet$Sub_metering_2)
Submetering3 <- as.numeric(YearsubSet$Sub_metering_3)
str(YearsubSet)
png("plot3.png", width=480, height=480)
plot(DateTime, Submetering1, type="l", xlab="", ylab="Energy sub metering")
lines(DateTime, Submetering2, type="l", col="red")
lines(DateTime, Submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
