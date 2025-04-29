#' Recommeded Water Intake Calculation
#'
#'@param weight weight
#'@param activityIntensity intensity "Low", "Medium", "High"
#'@return recommended water intake in ounces calculations
#'
water_intake <- function(weight, activityIntensity) {

  intake <- ifelse(activityIntensity == "Low", round(weight/2,2),
                   ifelse(activityIntensity == "Medium", weight,
                          ifelse(activityIntensity == "High", round(weight*1.5),
                                 NA)))

  return(intake)
}
