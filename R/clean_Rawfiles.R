#' cleans raw data from inst/extdata for easier and cleaner package use
#'
#' clean_distance - rounds the distance to the hundreths place
#' @param distance_column cleans distance column by rounding
#' @return cleaned distance column
#' @export
#'
clean_distance <- function(distance_column) {
  return(round(distance_column, 2))
}
#' clean_weight - rounds weight to the hundreths place
#' @param data dataset
#' @param kg_column kg column to be removed
#' @param weight_column weight column
#' @return cleaned weight column
#' @export
clean_weight <- function(data, kg_column, weight_column) {
  data[[weight_column]] <- round(data[[weight_column]], 2)

  data <- data %>% select(-kg_column)
  return(data)
}
#' clean_BMI - rounds weight to the hundreths place and removes kg columns
#' @param BMI_column BMI column
#' @return cleaned BMI column
#' @export
clean_BMI <- function(BMI_column) {
  return(round(BMI_column, 2))
}
#' Intensity levels
#'
#' @param dataset dataset being modified
#' @param numeric_vector numeric column of activity levels
#' @return updates dataset with categorical levels of activitity based off numeric column
#'
intensity_level <- function(dataset,column) {
  values <- dataset[[column]]
  breaks <- c(-Inf, (median(values) - sd(values)),
              (median(values) + sd(values)), Inf)
  labels <- c("Low", "Medium", "High")
  categorized_values <- cut(values, breaks = breaks, labels = labels)
  categorized_values <- as.character(categorized_values)
  dataset$intensity_level <- categorized_values
  return(dataset)
}
