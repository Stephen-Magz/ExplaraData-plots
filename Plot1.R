#Reading, naming and subsetting power consumption data
setwd("C:/Users/FAITHWORKS/Documents/Datasciences R/ExData/Wk1")
power_consump<-read.csv("household_power_consumption.txt",header = T, sep = ";",na.strings = "?",nrows = 2075259,check.names = F,stringsAsFactors = F,comment.char = "",quote = "\"")
data1<-subset(power_consump,Date %in% c("1/2/2007","2/2/2007"))
data1$Date<-as.Date(data1$Date,format="%d/%m/%Y")
#calling the basic plot function
hist(data1$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (killowatts)",ylab = "Frequency",col ="purple")
#Constructing png plot
dev.copy(png,file="plot1.png",width = 480,height = 480)
dev.off()
