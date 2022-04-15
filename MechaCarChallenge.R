# Load dplyr
library(dplyr)

# Import and read MechaCarMpg file as dataframe
car_mpg_table <- read.csv('MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_mpg_table)

# Use summary function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_mpg_table))
