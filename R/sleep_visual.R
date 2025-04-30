#'Sleep visual plot
#'
#' @param data dataset
#' @param date data column in dataset
#' @param timeInBed total time spent in bed
#' @param TimeAsleep time asleep
#' @param sleepRecorded number of times went to sleep
#' @return plot of sleep data
#' @examples
#' # Plot sleep
#' sleep_plot(dailySleep, "SleepDate", "TotalTimeInBed", "TotalMinutesAsleep", "TotalSleepRecords")
#'
#' @importFrom ggplot2 ggplot aes geom_point labs theme element_text
#' @export

sleep_plot <- function(data, date, timeInBed, TimeAsleep, sleepRecorded){
  sleep_visual <- ggplot(data, aes(x= as.Date(.data[[date]]), y= .data[[timeInBed]])) +
    geom_point(aes(color= .data[[TimeAsleep]], size= .data[[sleepRecorded]])) +
    labs(x= "Date", y= "Time In Bed", title= "Sleep Plot",
         size= "Sleeps Recorded", color= "Minutes Asleep") +
    theme_economist() +
    theme(legend.position= "right") +
    theme(plot.title = element_text(hjust = 0.5))
  return(sleep_visual)
}


