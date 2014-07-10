data <- read.table("./data/household_power_consumption.txt",sep=";",skip=66637, nrows=69517-66637, colClasses = c("character","character",rep("numeric",7)))
header <- read.table("./data/household_power_consumption.txt",sep=";",nrows = 1, stringsAsFactors = FALSE)
colnames(data) <- header
png("plot2.png")
par(mar=c(4,4,3,2))
plot(1:nrow(data), data$Global_active_power, xaxt="n", type="l", ylab="Global Active Power (kilowatts)", xlab="")
axis(side=1, at=c(0,match(2,as.numeric(format(strptime(data$Date, format="%d/%m/%Y"), "%d"))), nrow(data)), labels = c("Thu","Fri","Sat"))
dev.off()