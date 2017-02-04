source("readData.R")
source("plottingSubRoutines.R")

# Using the data frame read in readData.R file.
# Builds a line graph of Global Active power over time 
#   for the range of February 1st, to February 2nd 2007.
# Saves this plot as Plot2.png file


png(filename = "Plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

generatePlot2();

dev.off()
