#' Area charts
#' 
#' Draw an area chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/lines.html}{here}.
#' 
#' @param morrisjs a \code{\link{morrisjs}} object,
#' @param options an optional list of parameters
#' @usage morrisjs(data) %>% 
#' mjsArea(options = NULL)
#' @export
mjsArea <- function(morrisjs, options = NULL){
  baseChart(morrisjs, "Area", options = options)
}