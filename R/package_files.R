#' Lists files included in package
#'
#'
#' @return list of files included in package
#' @examples
#' # display files included in this package
#' package_files()
#' @export
#'
package_files <- function() {
  system.file("extdata", package= "fitnessTracker") |> list.files()
}
