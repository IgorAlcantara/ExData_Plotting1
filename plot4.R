
################################################
## Coursera - Data Science Specialization ##
### Course Exploratory Data Analysis ###
#### Project Assignment # 01 ####
##### By:: IGOR ALCANTARA #####
###### igor.alcantara@ipc-global.com ######
################################################

# Load the data
source("./ETL.R")

# Prepare the Canvas to present 4 charts in 2 columns and 2 rows
## mfrow defines the number of rows and colums
## Because is mfrow and not mfcol, the row will be fill first, not the column
## mar define the Inner Margins
## oma define the Outer margins
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,4,0))


# Draw the charts of the Canvas
## With function avoid retyping dataset$variable
## ~ operator returns the correlation between the 2 variables
### This could be made with in 1 With statement
#### But for better understanding of the code, I made it in 4 blocks of code


# Draw the 1st chart of canvas
## Position: Row 1 Column 1
with(data = plotData, {
  plot(Global_active_power ~ Datetime, type="l", 
       ylab="Global Active Power (kilowatts)", xlab="")
})

# Draw the 2nd chart of canvas
## Position: Row 1 Column 2
with(data = plotData, {
  plot(Voltage ~ Datetime, type="l", ylab="Voltage (volt)", xlab="")
})

# Draw the 3nd chart of canvas
## Position: Row 2 Column 1
### Lines function adds different lines to the chart
### Legend function creates a legend for the chart
with(data = plotData, {
  plot(Sub_metering_1 ~ Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2 ~ Datetime,col='Red')
  lines(Sub_metering_3 ~ Datetime,col='Blue')
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

# Draw the 4th chart of canvas
## Position: Row 2 Column 2
with(data = plotData, {
  plot(Global_reactive_power~Datetime, type="l", 
       ylab="Global Rective Power (kilowatts)",xlab="")
})

# Saving a copy to PNG file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()


