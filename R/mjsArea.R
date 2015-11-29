#' Area charts
#' 
#' Draw an area chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/lines.html}{here}.
#' 
#' @export
mjsArea <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Area", options = options)
}