#' Step Visualization
#'
#' @param data dataset wanted for plot
#' @param date date column of dataset
#' @param steps step count of dataset
#' @return ggplot of steps over time
#' @examples
#' # Plot steps
#' steps_plot(dailyActivity, "ActivityDate", "TotalSteps")
#'
#' @importFrom ggplot2 ggplot aes geom_line labs
#' @importFrom ggthemes theme_economist scale_fill_economist
#' @export
steps_plot <- function(data, date, steps) {
  steps <- ggplot(data, aes(x= as.Date(.data[[date]]), y= .data[[steps]])) +
    geom_line(color= "darkblue") +
    labs(x= "Date", y= "Step Count", title= "Steps Plot") +
    theme_economist() +
    scale_fill_economist()
  return(steps)
}
