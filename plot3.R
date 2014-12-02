#plot3.R
#by Andrew Vallejos
#
# Run command for assignment
#> source("plot3.R");plot3("household_power_consumption.txt", png = T)

plot3 <- function(file, png = F){
	#external function call to read and subset data
	source("read_data.R")
	data <- read_data(file)
	
	#checks flag to open PNG device
	#useful for testing to the screen device and then
	#printing the graph to a file only when it looks good
	if(png)
	{
		png("plot3.png", bg="transparent")
	}

	plot(data$timestamp,data$Sub_metering_1,
		type = "l",
		main = "",
		xlab = "",
		ylab = "Global Active Power (kilowatts)")
		
	lines(data$timestamp,data$Sub_metering_2,
		type = "l",
		col = "red")
		
	lines(data$timestamp,data$Sub_metering_3,
		type = "l",
		col = "blue")
	
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
		col=c("black","red","blue"), lty=1)
		
	#turns off external device if one was used
	if(png)
	{
		dev.off();
	}
}