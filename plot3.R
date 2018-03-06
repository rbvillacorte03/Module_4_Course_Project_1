# Load the data required

consumption<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

# Subset the loaded data into the dates 2007-02-01 and 2007-02-02

subsetpower<-consumption[consumption$Date %in% c("1/2/2007", "2/2/2007"),]

# Convert the Date and Time variables into Date/Time classes in R

datetime<-strptime(paste(subsetpower$Date, subsetpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

plot2<-as.numeric(subsetpower$Global_active_power)

submeter1<-as.numeric(subsetpower$Sub_metering_1)
submeter2<-as.numeric(subsetpower$Sub_metering_2)
submeter3<-as.numeric(subsetpower$Sub_metering_3)

# Save into PNG type of visual graphics

png("plot3.png", width = 480, height = 480)

# Plot the file

plot(datetime, submeter1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetime, submeter2, type = "l", col="red")
lines(datetime, submeter3, type = "l", col="blue")

# Add legend

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off()