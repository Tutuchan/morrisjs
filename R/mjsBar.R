#' Bar charts
#' 
#' Draw a bar chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/bars.html}{here}.
#' 
#' @param morrisjs a \code{\link{morrisjs}} object,
#' @param options an optional list of parameters
#' @usage morrisjs(data) %>% 
#' mjsBar(options = NULL)
#' @export
mjsBar <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Bar", options = options)
}