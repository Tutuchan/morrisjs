#' Bar charts
#' 
#' Draw a bar chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/bars.html}{here}.
#' 
#' @export
mjsBar <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Bar", options = options)
}