# Plot Logic

generatePlot1 <- function(){
	hist(df$Global_active_power, main = "Global Active Power", col="orange", xlab = "Global Active Power (kilowatts)" )
}

generatePlot2 <- function() {
	plot(df$date, df$Global_active_power, type="n", xlab = "", ylab= "Global Active Power (kilowatts)")
	lines(df$date, df$Global_active_power)
	
}

generatePlot3 <- function() {
	plot(df$date, df$Sub_metering_1, type="n", xlab = "", ylab= "Energy Sub metering")
	lines(df$date, df$Sub_metering_1, col = "black")
	lines(df$date, df$Sub_metering_2, col = "red")
	lines(df$date, df$Sub_metering_3, col = "blue")
	
	legend(
		"topright", 
		legend = paste(replicate(3, "Sub_metering"), c(1, 2, 3)), 
		lwd = replicate(3, 2.5),
		col = c("black", "red", "blue"))
}

generatePlot4TopRight <- function(){
	plot(df$date, df$Voltage, type="n", xlab = "date time", ylab= "Voltage")
	lines(df$date, df$Voltage)
}

generatePlot4BottomRight <- function() {
	plot(df$date, df$Global_reactive_power, type="n", xlab = "date time", ylab= "Global Reactive Power")
	lines(df$date, df$Global_reactive_power)
}
	