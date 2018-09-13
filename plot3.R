## delete data except 2 days data in the text file

## create table
data <- read.table("household_power_consumption.txt", sep=";")
names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data2 <- data[2:2881,]
 
## create plot3.png
data5 <- as.numeric(levels(data2$Sub_metering_1))[data2$Sub_metering_1]
data6 <- as.numeric(levels(data2$Sub_metering_2))[data2$Sub_metering_2]
data7 <- as.numeric(levels(data2$Sub_metering_3))[data2$Sub_metering_3]

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

png("plot3.png", width = 480, height = 480)
dev.copy(png, "plot3.png")
dev.off()