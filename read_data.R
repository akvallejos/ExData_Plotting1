read_data <- function(file){
	d <- read.csv(file, sep=';', na.strings="?")
	s <- subset(d, Date == "1/2/2007" | Date == "2/2/2007")
	s
}