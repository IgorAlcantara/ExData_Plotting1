
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
## With function avoid retyping dataset$variable
## ~ operator returns the correlation between the 2 variables
### Lines function adds different lines to the chart
### Legend function creates a legend for the chart
with(data = plotData, {
  plot(Sub_metering_1 ~ Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="") # End of Plot function
  
  lines(Sub_metering_2 ~ Datetime, col='Red')
  lines(Sub_metering_3 ~ Datetime, col='Blue')
}) # End of With function

# After plot is drawn, add legends to the chart
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Saving a copy to PNG file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()

