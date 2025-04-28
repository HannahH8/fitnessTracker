library(dplyr)
#find and set raw files to variables
raw_dailyActivity <- system.file("extdata", "dailyActivity_summary.csv", package= "fitnessTracker")
raw_dailyWeightLog <- system.file("extdata", "dailyWeightLog_summary.csv", package= "fitnessTracker")
raw_weightLog <- system.file("extdata", "weightLog-report.csv", package= "fitnessTracker")
#read variables
dailyActivity <- read.csv(raw_dailyActivity)
dailyWeightLog <- read.csv(raw_dailyWeightLog)
weightLog <- read.csv(raw_weightLog)
#clean variables
dailyActivity$TotalDistance <- clean_distance(dailyActivity$TotalDistance)
weightLog$distance_measured <- clean_distance(weightLog$distance_measured)

dailyWeightLog <- clean_weight(dailyWeightLog, "WeightKg", "WeightPounds")

dailyWeightLog$BMI <- clean_BMI(dailyWeightLog$BMI)


#moving files for package use to data folder
save(dailyActivity, file= "data/dailyActivity.rda")
save(dailyWeightLog, file= "data/dailyWeightLog.rda")
save(weightLog, file= "data/weightLog.rda")

dailySleep <- read.csv(system.file("extdata", "dailySleep_summary.csv", package= "fitnessTracker"))
save(dailySleep, file= "data/dailySleep.rda")
hourlyActivity <- read.csv(system.file("extdata", "hourlyActivity_summary.csv", package= "fitnessTracker"))
save(hourlyActivity, file= "data/hourlyActivity.rda")
weekDaily <- read.csv(system.file("extdata", "weekDaily_summary.csv", package= "fitnessTracker"))
save(weekDaily, file= "data/weekDaily.rda")
