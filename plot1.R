source("readData.R")
source("plottingSubRoutines.R")

# Using the data frame read in readData.R file.
# Builds a histogram of Global Active power
#   for the range of February 1st, to February 2nd 2007.
# Saves this plot as Plot1.png file

png(filename = "Plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

generatePlot1()

dev.off()
