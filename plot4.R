# Create PNG file
 png("plot4.png", width = 480, height = 480)
 
   # Divide plotting area into 2 rows and 2 columns
   par(mfrow = c(2, 2))
 
   # Top-left: Global Active Power
   plot(datetime, data_2days$Global_active_power,
         +      type = "l",
         +      ylab = "Global Active Power",
         +      xlab = "")
 
   # Top-right: Voltage
   plot(datetime, data_2days$Voltage,
         +      type = "l",
         +      ylab = "Voltage",
         +      xlab = "datetime")
 
   # Bottom-left: Energy Sub Metering
   plot(datetime, data_2days$Sub_metering_1,
         +      type = "l",
         +      ylab = "Energy sub metering",
         +      xlab = "")
 
   lines(datetime, data_2days$Sub_metering_2, col = "red")
 lines(datetime, data_2days$Sub_metering_3, col = "blue")
 
   # Bottom-right: Global Reactive Power
   plot(datetime, data_2days$Global_reactive_power,
         +      type = "l",
         +      ylab = "Global_reactive_power",
         +      xlab = "datetime")
 
   # Close PNG device
   dev.off()