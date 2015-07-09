
# Project 1
#
# set working dir
setwd("C:/Users/masak_000/SkyDrive/Documents/cousera/exdata/Project1")

# set a file name which is loaded
filepath <- ("./data.txt")


# load data
x <- read.table(filepath, sep=";", header=TRUE, na.strings="?")
x$datetime <- strptime(paste(x$Date, x$Time), "%d/%m/%Y %H:%M:%S")
a <- subset(x, as.Date(x$datetime) %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")))

# Making graph on the screen

with(a, plot(datetime, Sub_metering_1, xlab="",ylab="Energy sub melering", type = "n"))
with(a, lines(datetime, Sub_metering_1, col="black")) 
with(a, lines(datetime, Sub_metering_2, col="red")) 
with(a, lines(datetime, Sub_metering_3, col="blue")) 

legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty="solid")

plot(a$datetime, a$Sub_metering_1, xlab="",ylab="Energy sub melering", type="l")


# Copy to png file
dev.copy(png, file = "plot3.png", width=480, height=480) 
dev.off() 

