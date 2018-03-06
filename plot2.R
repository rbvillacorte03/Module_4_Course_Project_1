# Load the data required

consumption<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the loaded data into the dates 2007-02-01 and 2007-02-02

subsetpower<-consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Convert the Date and Time variables into Date/Time classes in R

datetime<-strptime(paste(subsetpower$Date, subsetpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

plot2<-as.numeric(subsetpower$Global_active_power)

# Save into PNG type of visual graphics

png("plot2.png", width = 480, height = 480)

# Plot the file

plot(datetime, plot2, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()