#plot1.R
#by Andrew Vallejos
#
# Run command for assignment
#> source("plot1.R");plot1("household_power_consumption.txt", png = T)

plot1 <- function(file, png = F){
	#external function call to read and subset data
	source("read_data.R")
	data <- read_data(file)
	
	#checks flag to open PNG device
	#useful for testing to the screen device and then
	#printing the graph to a file only when it looks good
	if(png)
	{
		png("plot1.png", bg="transparent")
	}
	
	make_plot1(data)
	
	#turns off external device if one was used
	if(png)
	{
		dev.off();
	}
}

make_plot1 <- function(data){
	hist(data$Global_active_power, 
		main = "Global Active Power",
		xlab = "Global Active Power (kilowatts)",
		ylab = "Frequency",
		col = "red")
}