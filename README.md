# Electric power consumption - Exploratory graphs
**Author:** Guillermo Florez Montero

First project of the [*Exploratory Data Analysis*](https://www.coursera.org/learn/exploratory-data-analysis) course at Coursera - Johns Hopkins University.
This peroject uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.php), a popular repository for machine learning datasets. 
In particular, we will be using the “Individual household electric power consumption Data Set”.

**Dataset:** [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip) [20Mb]

**Description:** Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
The following descriptions of the 9 variables in the dataset are taken from the UCI web site:

**1. Date:** Date in format dd/mm/yyyy

**2. Time:** time in format hh:mm:ss

**3. Global_active_power:** household global minute-averaged active power (in kilowatt)

**4. Global_reactive_power:** household global minute-averaged reactive power (in kilowatt)

**5. Voltage:** minute-averaged voltage (in volt)

**6. Global_intensity:** household global minute-averaged current intensity (in ampere).

**7. Sub_metering_1:** energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, 
an oven and a microwave (hot plates are not electric but gas powered).

**8. Sub_metering_2:** energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, 
a tumble-drier, a refrigerator and a light.

**9. Sub_metering_3:** energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. 
This repo contains 4 exploratory graphs and the R code to generate each one 
<br/>

  Description | png plot | R code
  :---:|:---:|:---: 
  Global Active Power histogram | `plot1.png` | `plot1.R`
  Daily Global Active Power  | `plot2.png` | `plot2.R`
  Daily Energy Sub Metering   | `plot3.png` | `plot3.R`
  Electric power consumption (4 plots) | `plot4.png` | `plot4.R`

  
More information of this project at the [official repo](https://github.com/rdpeng/ExData_Plotting1) of the instructor.
