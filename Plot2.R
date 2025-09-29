#########################################
#                                       #
#              Plot 2.                  #
#                                       #
#########################################

library(dplyr)

## Prepare the data

# the url of the zip
urlData <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

# Download the zip (if it doesn't exist)
if(!file.exists("household_power_consumption.zip")) {
     download.file(urlData, 
                   destfile = "household_power_consumption.zip",
                   mode = "wb")
}

# Unzip the directory
if(!file.exists("household_power_consumption.txt")) { 
     unzip("household_power_consumption.zip")
}

# Read the data and explore it
hpcData <- read.table("./household_power_consumption.txt",
                      sep = ";", header = TRUE, na.strings = "?",
                      colClasses = c("character", "character", "numeric",
                                     "numeric", "numeric", "numeric",
                                     "numeric", "numeric", "numeric"))
head(hpcData)
str(hpcData)

# Convert the variable date to class date
hpcData$Date <- as.Date(hpcData$Date, format = "%d/%m/%Y")

# subset the data
hpcSubset <- hpcData %>% 
     filter(Date == "2007-02-01" | Date == "2007-02-02")

# remove the larger original data set
rm(hpcData)

# merge Date and Time in a new variable

hpcSubset <- hpcSubset %>% 
     mutate(DateTime = paste(Date, Time, sep = " ")) %>%
     mutate(DateTime = as.POSIXct(strptime(DateTime, "%Y-%m-%d %H:%M:%S")))
str(hpcSubset)


png("plot2.png", width = 480, height = 480)
plot(Global_active_power ~ DateTime, data = hpcSubset, type = "l", 
     xlab = " ", ylab = "Global Active Power (kilowatt)")
dev.off()



## END
