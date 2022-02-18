##Deliverable 1

install.packages("tidyverse")
install.packages("jsonlite")
install.packages("dplyr")

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #Perfrom linear regression & pass all columns into the data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #Determine P Value & R squared Value


##Deliverable 2

mecha_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

library(tidyverse)
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#lot_summary dataframe using the group_by()                                                                 
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')                                    

#box plot: PSI Whole lot
plt1 <- ggplot(mecha_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(mecha_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()


## DELIVERABLE 3


#Use t.test() on PSI. Mean of 1,500 PSI.
t.test(mecha_coil$PSI,mu=1500)

#Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")


t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
