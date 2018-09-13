## delete data except 2 days data in the text file

## create table
data <- read.table("household_power_consumption.txt", sep=";")
names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data2 <- data[2:2881,]

## create plot1.png
data4 <- as.numeric(levels(data2$Global_active_power))[data2$Global_active_power]
hist(data4, xlab="Global Active Power(kilowatts)", main="Global Active Power", col=3)
png("plot1.png", width = 480, height = 480)
dev.copy(png, "plot1.png")
dev.off()