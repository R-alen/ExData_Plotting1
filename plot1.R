# Load household electricity data
> 
  > data <- read.table(
    +     file.choose(),
    +     header = TRUE,
    +     sep = ";",
    +     na.strings = "?",
    +     stringsAsFactors = FALSE
    + )
  
  # Create PNG file
  > png("plot2.png", width = 480, height = 480)
  > 
    > # Convert Date and Time into date-time format
    > datetime <- strptime(
      +     paste(data_2days$Date, data_2days$Time),
      +     format = "%d/%m/%Y %H:%M:%S"
      + )
    > 
      > # Plot Global Active Power
      > plot(datetime,
             +      data_2days$Global_active_power,
             +      type = "l",
             +      xlab = "",
             +      ylab = "Global Active Power (kilowatts)")
    > 
      > # Close PNG device
      > dev.off()
    