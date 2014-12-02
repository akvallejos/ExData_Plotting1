#plot2.R
#by Andrew Vallejos
#
# Run command for assignment
#> source("plot2.R");plot2("household_power_consumption.txt", png = T)

plot2 <- function(file, png = F){
	#external function call to read and subset data
	source("read_data.R")
	data <- read_data(file)
	
	#checks flag to open PNG device
	#useful for testing to the screen device and then
	#printing the graph to a file only when it looks good
	if(png)
	{
		png("plot2.png", bg="transparent")
	}

	plot(data$timestamp,data$Global_active_power,
		type = "l",
		main = "",
		xlab = "",
		ylab = "Global Active Power (kilowatts)")
	
	#turns off external device if one was used
	if(png)
	{
		dev.off();
	}
}