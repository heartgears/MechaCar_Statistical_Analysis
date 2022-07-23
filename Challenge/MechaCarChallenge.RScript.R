# Read in Dependencies

install.packages("plyr") 
install.packages("dplyr") 
library(dbplyr)
library(plyr)
library("tidyverse")

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

#lot_summary_demo <- (suspension %>% group_by(Manufacturing_Lot))
#lot_summary <- summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
#lot_summary

lot_summary_test <- (suspension %>% group_by(Manufacturing_Lot) %>%
      + summarize(Mean=mean(suspension$PSI),Median=median(suspension$PSI),
                  Variance=var(suspension$PSI),SD=sd(suspension$PSI), .groups='keep'))
lot_summary_test

