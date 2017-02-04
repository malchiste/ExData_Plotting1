library(dplyr)
# Generate Plot #1:
# Plot description: Histogram of Global Active Power in KiloWatts
df <- read.table("household_power_consumption.txt", skip=66637, nrows = (69519- 66638-1), sep = ";")
df$date <-  strptime(paste(df$V1, df$V2),  "%d/%m/%Y %H:%M:%S")
df <- rename(
	df, 
	Global_active_power= V3, 
	Global_reactive_power = V4, 
	Voltage = V5, 
	Global_intensity = V6, 
	Sub_metering_1 = V7, 
	Sub_metering_2 = V8, 
	Sub_metering_3 = V9)

df <- select( df, Global_active_power:date)


