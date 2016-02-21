## Project Week1 Exploratory data analysis
HousePower <- "C:/Users/vmuthukr/Documents/Exploratory_Analysis/household_power_consumption.txt"
ConsumptionData <- read.table(HousePower, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
YearsubSet <- ConsumptionData[ConsumptionData$Date %in% c("1/2/2007","2/2/2007"), ]
head(YearsubSet)
GlobalActivePower <- as.numeric(YearsubSet$Global_active_power)
str(GlobalActivePower)
png("plot1.png", width=480, height=480)
hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", xlim=c(0,6), ylim=c(0,1200))
dev.off()


