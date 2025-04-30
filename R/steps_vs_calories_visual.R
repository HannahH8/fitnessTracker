#'Steps vs. Calories Plot
#'
#' @param data dataset
#' @param steps steps
#' @param calories calories burned
#' @param intensity optional: intensity of activity
#' @param active_time optional: total time of activity
#' @return plot visualization
#' @examples
#' # Steps vs. Calories Plot
#' steps_vs_calories(dailyActivity, "TotalSteps", "Calories")
#'
#' @importFrom rlang .data
#' @importFrom ggplot2 ggplot aes geom_point
#' @importFrom ggplot2 ggplot aes geom_point scale_size
#' @export
steps_vs_calories <- function(data, steps, calories, intensity= NA, active_time= NA) {
  p <- ggplot(data, aes(x= .data[[steps]], y= .data[[calories]]))

  if(!is.na(intensity)) {
    p <- p + aes(color= .data[[intensity]])
  }

  if (!is.na(active_time)) {
    p <- p + aes(size = .data[[active_time]])
  }

  p <- p + geom_point() + scale_size(range = c(.5, 3)) +
    labs(x= "Steps", y= "Calories Burned",
         title = "Steps vs Calories", color= "Intensity", size= "Activity Duration") +
    theme_economist() +
    theme(legend.position= "right") +
    theme(plot.title = element_text(hjust = 0.5))

  return(p)
}

