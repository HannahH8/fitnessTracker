#' Activity Intensity Visual Plot
#' This plot function is intended for medium - smaller sets of data
#'
#'
#' @param data dataset
#' @param date datasets dates
#' @param intensities datasets intensity values
#' @param intensity_levels datasets intensity levels
#' @return returns intensity plot
#' @examples
#' # Plot Intensity
#' intensity_plot(dailyActivity, "ActivityDate", "DailyIntensity", "intensity_level")
#'
#' @importFrom ggplot2 ggplot aes labs theme element_text
#' @importFrom ggridges geom_density_ridges
#' @importFrom ggthemes theme_economist scale_fill_economist
#' @export
intensity_plot <- function(data, date, intensities, intensity_levels) {
  intense <- ggplot(data, aes(x = .data[[intensities]], y =as.factor(.data[[date]]),
                              fill = .data[[intensity_levels]])) +
    geom_density_ridges(alpha= 0.6) +
    labs(x = "Intensity", y = "Date", title= "Activity Intensity Chart",
         fill= "Intensity Level") +
    theme_economist() +
    scale_fill_economist() +
    theme(legend.position= "right") +
    theme(plot.title = element_text(hjust = 0.5))
  return(intense)
}

