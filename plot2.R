
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

# Making Histgram on the screen

plot(a$datetime, a$Global_active_power, xlab="",ylab="Global Active Power (kilowatts)", type="l")


# Copy to png file
dev.copy(png, file = "plot2.png", width=480, height=480) 
dev.off() 

