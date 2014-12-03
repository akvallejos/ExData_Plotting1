#plot3.R
#by Andrew Vallejos
#
# Run command for assignment
#> source("plot4.R");plot4("household_power_consumption.txt", png = T)
plot4 <- function(file, png=F){
	source("plot2.R")
	source("plot3.R")
	source("read_data.R")

	#external function call to read and subset data
	source("read_data.R")
	data <- read_data(file)
	
	#checks flag to open PNG device
	#useful for testing to the screen device and then
	#printing the graph to a file only when it looks good
	
	if(png)
	{
		png("plot4.png", bg="transparent")
	}

	par(mfcol=c(2,2))

	make_plot2(data)
	make_plot3(data)
	make_voltage_plot(data)
	make_reactive_plot(data)
	
	#turns off external device if one was used
	if(png)
	{
		dev.off();
	}
}

make_voltage_plot <- function(data){
	plot(data$timestamp, data$Voltage,
		type="l",
		main="",
		xlab="datetime",
		ylab="Votage")
	
}

make_reactive_plot <- function(data){
	plot(data$timestamp, data$Global_reactive_power,
		type="l",
		main="",
		xlab="datetime",
		ylab="Global_reactive_power")
}