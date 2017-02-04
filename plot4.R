source("readData.R")
source("plottingSubRoutines.R")

# Creates a composite graph in a two by two matrix of:
# Graph 1 (Top Left): Line graph of Global active power over time.
# Graph 2 (Top Right): Line graph of Voltage over time.
# Graph 3 (Bottom Left): Line graph of the three Sub-metering variables.
# Graph 4 (Bottom Right): Line graph of the global reactive power over time.


png(filename = "Plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow = c(2,2))

#Plot 1 
generatePlot2()
generatePlot4TopRight()
generatePlot3()
generatePlot4BottomRight()

dev.off()
