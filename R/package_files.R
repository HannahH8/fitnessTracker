#' Lists files included in package
#'
#'
#' @return list of files included in package
package_files <- function() {
  system.file("extdata", package= "fitnessTracker") |> list.files()
}
