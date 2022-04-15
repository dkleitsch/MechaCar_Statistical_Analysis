# Deliverable 1
# Load dplyr
library(dplyr)

# Import and read MechaCarMpg file as dataframe
car_mpg_table <- read.csv('MechaCar_mpg.csv',check.names=F, stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_mpg_table)

# Use summary function to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_mpg_table))


# Deliverable 2
# Import and read in the suspension coil file
coil_table <- read.csv("Suspension_coil.csv",check.names = F, stringsAsFactors = F)

# Create a total_summary dataframe using summarize()
total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create a lot_summary dataframe group_by() and summarize()
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))


# Deliverable 3
# Perform t-test on PSI across all manufacturing lots
t.test((coil_table$PSI),mu=1500)

# Perform t-test on PSI on individual manufacturing lots
lot_1 <- subset(coil_table, Manufacturing_Lot == "Lot1")
t.test(lot_1$PSI,mu=1500)

lot_2 <- subset(coil_table, Manufacturing_Lot == "Lot2")
t.test(lot_2$PSI, mu=1500)

lot_3 <- subset(coil_table, Manufacturing_Lot == "Lot3")
t.test(lot_3$PSI, mu=1500)
