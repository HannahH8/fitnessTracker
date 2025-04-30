#' Daily Activity Data
#'
#' Contains information about users' daily physical activity.
#'
#' @format A data frame with 10 variables:
#' \describe{
#'   \item{Id}{User ID}
#'   \item{ActivityDate}{Date of activity}
#'   \item{TotalSteps}{Total number of steps}
#'   \item{TotalDistance}{Total distance in miles}
#'   \item{DailyIntensity}{Aggregate intensity score}
#'   \item{activity_duration}{Duration of activity in minutes}
#'   \item{intense_activity_duration}{Time spent in intense activity (minutes)}
#'   \item{idle_duration}{Time spent idle (minutes)}
#'   \item{Calories}{Calories burned}
#'   \item{intensity_level}{Categorical intensity level}
#' }
#' @source Fitbit data
"dailyActivity"

#' Daily Sleep Data
#'
#' Contains information about users' sleep patterns.
#'
#' @format A data frame with 5 variables:
#' \describe{
#'   \item{Id}{User ID}
#'   \item{SleepDate}{Date of recorded sleep}
#'   \item{TotalSleepRecords}{Number of sleep records in the night}
#'   \item{TotalMinutesAsleep}{Total minutes asleep}
#'   \item{TotalTimeInBed}{Total time spent in bed}
#' }
#' @source Fitbit data
"dailySleep"

#' Daily Weight Log Data
#'
#' Contains user weight and BMI records.
#'
#' @format A data frame with 4 variables:
#' \describe{
#'   \item{Id}{User ID}
#'   \item{WeightDate}{Date of measurement}
#'   \item{WeightPounds}{Weight in pounds}
#'   \item{BMI}{Body Mass Index}
#' }
#' @source Fitbit data
"dailyWeightLog"

#' Hourly Activity Data
#'
#' Contains hourly breakdown of user activity.
#'
#' @format A data frame with 6 variables:
#' \describe{
#'   \item{Id}{User ID}
#'   \item{ActivityHour}{Timestamp for activity}
#'   \item{TotalSteps}{Steps taken during the hour}
#'   \item{TotalIntensity}{Intensity score for the hour}
#'   \item{Calories}{Calories burned}
#'   \item{intensity_level}{Categorical intensity level}
#' }
#' @source Fitbit data
"hourlyActivity"

#' Weekly Daily Aggregated Data
#'
#' Aggregated metrics by part of the week and time of day.
#'
#' @format A data frame with 10 variables:
#' \describe{
#'   \item{part_of_week}{Weekday or weekend}
#'   \item{day_of_week}{Day name (e.g., Monday)}
#'   \item{time_of_day}{Part of the day (e.g., morning, evening)}
#'   \item{total_steps}{Total steps in time block}
#'   \item{averaage_steps}{Average steps (typo preserved)}
#'   \item{total_intensities}{Total activity intensity}
#'   \item{average_intensities}{Average intensity score}
#'   \item{total_calories}{Total calories burned}
#'   \item{average_calories}{Average calories burned}
#'   \item{intensity_level}{Categorical intensity level}
#' }
#' @source Derived Fitbit data
"weekDaily"

#' Weight Log Extended Data
#'
#' Enhanced user weight data with activity summaries.
#'
#' @format A data frame with 11 variables:
#' \describe{
#'   \item{Id}{User ID}
#'   \item{weight_pounds}{Weight in pounds}
#'   \item{BMI}{Body Mass Index}
#'   \item{body_type}{Categorical body type}
#'   \item{steps_count}{Associated step count}
#'   \item{distance_measured}{Distance in miles}
#'   \item{avg_intensities}{Average intensity score}
#'   \item{intense_activity_duration}{Duration of intense activity (min)}
#'   \item{active_duration}{Duration of activity (min)}
#'   \item{idle_duration}{Duration of idle time (min)}
#'   \item{intensity_level}{Categorical intensity level}
#' }
#' @source Derived Fitbit data
"weightLog"

