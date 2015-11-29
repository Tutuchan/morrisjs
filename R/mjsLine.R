#' Line charts
#' 
#' Draw a line chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/lines.html}{here}.
#' 
#' @export
mjsLine <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Line", options = options)
}