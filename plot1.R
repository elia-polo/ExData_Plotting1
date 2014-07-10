data <- read.table("./data/household_power_consumption.txt",sep=";",skip=66637, nrows=69517-66637, colClasses = c("character","character",rep("numeric",7)))
header <- read.table("./data/household_power_consumption.txt",sep=";",nrows = 1, stringsAsFactors = FALSE)
colnames(data) <- header
png("plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col="#ff2500")
dev.off()