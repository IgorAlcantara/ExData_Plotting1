
################################################
## Coursera - Data Science Specialization ##
### Course Exploratory Data Analysis ###
#### Project Assignment # 01 ####
##### By:: IGOR ALCANTARA #####
###### igor.alcantara@ipc-global.com ######
################################################

# Set the Working Directory 
# This R script is not in Github
source("./SetWD.R")

# Read the data source
datasourcefile <- "./Data/household_power_consumption.txt"
rawdata <- read.table(datasourcefile, sep=";", header = TRUE, 
                      na.strings = "?", stringsAsFactors = FALSE,
                      check.names = FALSE, comment.char = "", quote='\"')

# Convert the Date format in order to filter later 
rawdata$Date <- as.Date(rawdata$Date, format="%d/%m/%Y")

# Subset the data to get only the dates needed
plotData <- subset(rawdata, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

# Remove the Raw Data to free some memory
rm(rawdata)

# Convert dates
plotDT <- paste(as.Date(plotData$Date), plotData$Time)
plotData$Datetime <- as.POSIXct(plotDT)


