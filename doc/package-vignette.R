## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 8,
  fig.height = 5    
)

## ----setup--------------------------------------------------------------------
library(fitnessTracker)
data("dailyActivity")
data("dailySleep")
data("dailyWeightLog")
data("hourlyActivity")
data("weekDaily")
data("weightLog")

library(ggplot2)
library(ggthemes)
library(ggridges)

## ----dailyActivity summary----------------------------------------------------
head(dailyActivity)
summary(dailyActivity)

## ----dailySleep summary-------------------------------------------------------
head(dailySleep)
summary(dailySleep)

## ----dailyWeightLog summary---------------------------------------------------
head(dailyWeightLog)
summary(dailyWeightLog)

## ----hourlyActivity summary---------------------------------------------------
head(hourlyActivity)
summary(hourlyActivity)

## ----weekDaily summary--------------------------------------------------------
head(weekDaily)
summary(weekDaily)

## ----weightLog summary--------------------------------------------------------
head(weightLog)
summary(weightLog)

## ----Package File Function----------------------------------------------------
package_files()

## ----BMR Function-------------------------------------------------------------
BMR(dailyWeightLog$WeightPounds)

## ----TDEE Function------------------------------------------------------------
TDEE(weightLog$weight_pounds, weightLog$intensity_level)

## ----Sleep Efficiency Function------------------------------------------------
sleep_efficiency(dailySleep$TotalMinutesAsleep, dailySleep$TotalTimeInBed)

## ----Water Intake Function----------------------------------------------------
water_intake(weightLog$weight_pounds, weightLog$intensity_level)

## ----Steps Vs. Calories Plot--------------------------------------------------
steps_vs_calories(dailyActivity, "TotalSteps", "Calories", "DailyIntensity", "activity_duration")

## ----Step Plot----------------------------------------------------------------
steps_plot(dailyActivity, "ActivityDate", "TotalSteps")

## ----Sleep Visualization------------------------------------------------------
sleep_plot(dailySleep, "SleepDate", "TotalTimeInBed", "TotalMinutesAsleep", "TotalSleepRecords")

## ----Intensity Plot-----------------------------------------------------------
intensity_plot(dailyActivity, "ActivityDate", "DailyIntensity", "intensity_level")

