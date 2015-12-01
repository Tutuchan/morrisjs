#' Line charts
#' 
#' Draw a line chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/lines.html}{here}.
#' 
#' @param morrisjs a \code{\link{morrisjs}} object,
#' @param options an optional list of parameters
#' @export 
mjsLine <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Line", options = options)
}