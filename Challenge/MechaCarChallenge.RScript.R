# Read in Dependencies

library(dplyr)
library(plyr)
library(tidyverse)

mpg <- read.csv(file="/Users/hunter/Desktop/Desktop - Hunter’s iMac/Columbia-Bootcamp/Mod_15_R/R_Analysis/Challenge/Resources/MechaCar_mpg.csv")
suspension <- read.csv(file="/Users/hunter/Desktop/Desktop - Hunter’s iMac/Columbia-Bootcamp/Mod_15_R/R_Analysis/Challenge/Resources/Suspension_Coil.csv")

# Deliverable 1
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
   + ground_clearance + AWD, data = mpg)

summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
           + ground_clearance + AWD, data = mpg))

# Deliverable 2
suspension_data <- (suspension %>%
      summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)))

total_summary <- data.frame(suspension_data)
total_summary

# Create the Summary By Lot
lot_summary_data <- suspension %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')
lot_summary <- data.frame(lot_summary_data)
lot_summary

# Deliverable 3
t.test(suspension$PSI,mu=1500)

lot1 <- subset(suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)

