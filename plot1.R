power_data <- read.table("household_power_consumption.txt", header = TRUE, 
                         sep = ";", na.strings = "?", 
                         colClasses = c("character", "character", rep("numeric", 7)),
                         check.names = FALSE)

power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")

subset_data <- power_data[power_data$Date >= as.Date("2007-02-01") & 
                          power_data$Date <= as.Date("2007-02-02"), ]

png(filename = "plot1.png", width = 480, height = 480)

hist(subset_data$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()