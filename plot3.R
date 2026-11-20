# Create PNG file
 png("plot3.png", width = 480, height = 480)
 
   # Plot first sub-metering
   plot(datetime,
         +      data_2days$Sub_metering_1,
         +      type = "l",
         +      col = "black",
         +      xlab = "",
         +      ylab = "Energy sub metering")
> 
   # Add second and third lines
   lines(datetime, data_2days$Sub_metering_2,
          +       type = "l", col = "red")
 
   lines(datetime, data_2days$Sub_metering_3,
          +       type = "l", col = "blue")

   # Add legend
   legend("topright",
           +        legend = c("Sub_metering_1",
                               +                   "Sub_metering_2",
                               +                   "Sub_metering_3"),
           +        col = c("black", "red", "blue"),
           +        lty = 1)
 
   # Close PNG device
   dev.off()