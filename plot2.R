## delete data except 2 days data in the text file

## create table
data <- read.table("household_power_consumption.txt", sep=";")
names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data2 <- data[2:2881,]

## create plot2.png
plot(data4, type="l", ylab="Global Active Power(kilowatts)", xlab="", xaxt="n")
axis(side=1, at=1, labels="Thu")
axis(side=1, at=1440, labels="Fri")
axis(side=1, at=2880, labels="Sat")
png("plot2.png", width = 480, height = 480)
dev.copy(png, "plot2.png")
dev.off()  