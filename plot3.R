source("readData.R")
source("plottingSubRoutines.R")

# Using the data frame read in readData.R file.
# builds a line graph of three series, for each Sub Metering variable 
# (in watts/hour of active energy):
# Sub metering 1 : Kitchen
# Sub metering 2 : Laundry Room.
# Sub metering 3 : Water Heater and air conditioner.
#   for the range of February 1st, to February 2nd 2007.
# Saves this plot as Plot3.png file

png(filename = "Plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

generatePlot3()

dev.off()
