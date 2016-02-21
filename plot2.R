# Project, Exploratory Analysis Week 1
HousePower <- "C:/Users/vmuthukr/Documents/Exploratory_Analysis/household_power_consumption.txt"
ConsumptionData <- read.table(HousePower, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsubSet <- ConsumptionData[ConsumptionData$Date %in% c("1/2/2007","2/2/2007"), ]
head(YearsubSet)
str(YearsubSet)
DateTime <- strptime(paste(YearsubSet$Date, YearsubSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(YearsubSet$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DateTime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off() 
