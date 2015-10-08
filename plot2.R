
################################################
## Coursera - Data Science Specialization ##
### Course Exploratory Data Analysis ###
#### Project Assignment # 01 ####
##### By:: IGOR ALCANTARA #####
###### igor.alcantara@ipc-global.com ######
################################################

# Load the data
source("./ETL.R")

# Plot the Line Chart
## ~ operator returns the correlation between the 2 variables
plot(plotData$Global_active_power ~ plotData$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")

# Saving a copy to PNG file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
