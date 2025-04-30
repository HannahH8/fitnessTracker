#' Sleep Efficiency calculation
#'
#' @param minutesAsleep time spent asleep
#' @param timeInBed total time in bed
#' @return sleep efficiency calculation
#' @examples
#' # Calculate Sleep Efficiency
#' sleep_efficiency(320,450)
#' @export

sleep_efficiency <- function(minutesAsleep, timeInBed) {
  return(round((minutesAsleep/timeInBed)*100,2))
}
