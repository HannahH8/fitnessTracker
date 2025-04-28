#' Total Daily Energy Expenditure
#'
#' @param weight weight in pounds
#' @param intensity character/category of intensity level
#' @return TDEE calvulation
#' @export
#'
TDEE <- function(weight, intensity){
  stopifnot(is.character(intensity))

  BMrate <- round((weight * 0.454),2)
  BMrate <- (500+(BMrate*22))

  PAL <- ifelse(intensity == "Low", 1.3, ifelse(intensity == "Medium", 1.55, 1.8))

  TDEE <- BMrate * PAL
  return(TDEE)
}
