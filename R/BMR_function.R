#' Calculates Basal Metabolic Rate
#'
#' @param pounds persons weight in pounds
#' @return estimate of persons Basal Metabolic Rate
#' @export
BMR <- function(pounds) {
  BMrate <- round((pounds * 0.454),2)
  BMrate <- (500+(BMrate*22))
  return(BMrate)
}
