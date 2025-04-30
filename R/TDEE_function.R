#' Total Daily Energy Expenditure
#'
#' @param weight weight in pounds
#' @param intensity character/category of intensity level
#' @return TDEE calvulation
#' @examples
#' # TDEE Plot
#' TDEE(230, "Low")
#' @export

TDEE <- function(weight, intensity_level){
  stopifnot(is.character(intensity_level))

  BMrate <- round((weight * 0.454),2)
  BMrate <- (500+(BMrate*22))

  PAL <- ifelse(intensity_level == "Low", 1.3, ifelse(intensity_level == "Medium", 1.55, 1.8))

  TDEE <- BMrate * PAL
  return(TDEE)
}
