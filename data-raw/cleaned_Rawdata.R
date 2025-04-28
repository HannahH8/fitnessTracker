library(dplyr)
#find and set raw files to variables
dailyActivity <- read.csv(system.file("extdata", "dailyActivity_summary.csv", package= "fitnessTracker"))
dailyWeightLog <- read.csv(system.file("extdata", "dailyWeightLog_summary.csv", package= "fitnessTracker"))
weightLog <- read.csv(system.file("extdata", "weightLog-report.csv", package= "fitnessTracker"))
hourlyActivity <- read.csv(system.file("extdata", "hourlyActivity_summary.csv", package= "fitnessTracker"))
weekDaily <- read.csv(system.file("extdata", "weekDaily_summary.csv", package= "fitnessTracker"))
dailySleep <- read.csv(system.file("extdata", "dailySleep_summary.csv", package= "fitnessTracker"))

#clean variables
dailyActivity$TotalDistance <- clean_distance(dailyActivity$TotalDistance)
weightLog$distance_measured <- clean_distance(weightLog$distance_measured)
dailyWeightLog <- clean_weight(dailyWeightLog, "WeightKg", "WeightPounds")
dailyWeightLog$BMI <- clean_BMI(dailyWeightLog$BMI)

#categorize intensity levels for easier function use
hourlyActivity <- intensity_level(hourlyActivity, "TotalIntensity")
weekDaily <- intensity_level(weekDaily, "average_intensities")
weightLog <- intensity_level(weightLog,"avg_intensities")
dailyActivity <- intensity_level(dailyActivity,"intense_activity_duration")

#moving files for package use to data folder
save(dailyActivity, file= "data/dailyActivity.rda")
save(dailyWeightLog, file= "data/dailyWeightLog.rda")
save(weightLog, file= "data/weightLog.rda")
save(hourlyActivity, file= "data/hourlyActivity.rda")
save(dailySleep, file= "data/dailySleep.rda")
save(weekDaily, file= "data/weekDaily.rda")
