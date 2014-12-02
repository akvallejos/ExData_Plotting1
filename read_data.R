read_data <- function(file){
	d <- read.csv(file, sep=';', na.strings="?")
	s <- subset(d, Date == "1/2/2007" | Date == "2/2/2007")
	
	#merges the Date and Time columns into a timestamp column for plotting
	s$timestamp <- strptime(paste(s$Date, s$Time), "%d/%m/%Y %H:%M:%S")
	s
}