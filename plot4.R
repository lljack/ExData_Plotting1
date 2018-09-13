## delete data except 2 days data in the text file

## create table
data <- read.table("household_power_consumption.txt", sep=";")
names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data2 <- data[2:2881,]

## create plot4.png
par(mfrow = c(2,2))
par(mar = c(4,4,1,1))

## create 1st graph of plot4.png
plot(data4, type="l", ylab="Global Active Power(kilowatts)", xlab="", xaxt="n")
axis(side=1, at=1, labels="Thu")
axis(side=1, at=1440, labels="Fri")
axis(side=1, at=2880, labels="Sat")

## create 2nd graph of plot4.png
data8 <- as.numeric(levels(data2$Voltage))[data2$Voltage]
plot(data8, type="l", ylab="Voltage", xlab="datetime", xaxt="n")
axis(side=1, at=1, labels="Thu")
axis(side=1, at=1440, labels="Fri")
axis(side=1, at=2880, labels="Sat")

## create 3rd graph of plot4.png
plot(data5, type="l", ylab="Energy sub Metering", xlab="", xaxt="n")
points(data6, col="red", type="l")
points(data7, col="blue", type="l")

axis(side=1, at=1, labels="Thu")
axis(side=1, at=1440, labels="Fri")
axis(side=1, at=2880, labels="Sat")

cols <- c("black", "red", "blue")
ltys <- c(1, 1, 1)
labels <- c("submetering_1", "submetering_2", "submetering_3")
legend("topright", legend = labels, col = cols, lty = ltys)

## create 4th graph of plot4.png
data9 <- as.numeric(levels(data2$Global_reactive_power))[data2$Global_reactive_power]
plot(data9, type="l", ylab="Global_reactive_power", xlab="datetime", xaxt="n")
axis(side=1, at=1, labels="Thu")
axis(side=1, at=1440, labels="Fri")
axis(side=1, at=2880, labels="Sat")

## write to png file
png("plot4.png", width = 480, height = 480)
dev.copy(png, "plot4.png")
dev.off() 