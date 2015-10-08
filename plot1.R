
################################################
## Coursera - Data Science Specialization ##
### Course Exploratory Data Analysis ###
#### Project Assignment # 01 ####
##### By:: IGOR ALCANTARA #####
###### igor.alcantara@ipc-global.com ######
################################################

# Load the data
source("./ETL.R")

## Plot the 1st Histogram
hist(plotData$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving a copy to PNG file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

