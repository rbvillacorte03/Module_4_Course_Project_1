# Set the working directory into downloaded directory of the data set.

setwd("C:/Users/enteng007/Desktop/Coursera/Exploratory_Data_Analysis/Week_1/Course_Project_1")

# Load the data required

consumption<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the loaded data into the dates 2007-02-01 and 2007-02-02

subsetpower<-consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Convert the data into the same class

plot1<-as.numeric(subsetpower$Global_active_power)


# Save the data into visual graphic data of PNG

png("plot1.png", width = 480, height = 480)

# Plot the data using histogram

hist(plot1, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()