#' Step Visualization
#'
#' @param data dataset wanted for plot
#' @param date date column of dataset
#' @param date step count of dataset
#' @return ggplot of steps over time
#' @export
steps_plot <- function(data, date, steps) {
  steps <- ggplot(data, aes(x= as.Date({{date}}), y= {{steps}})) +
    geom_line(color= "darkblue") +
    labs(x= "Date", y= "Step Count") +
    theme_economist() +
    scale_fill_economist()
  return(steps)
}
