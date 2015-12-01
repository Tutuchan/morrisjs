#' Donut charts
#' 
#' Draw a donut chart. Possible options are available 
#' \href{http://morrisjs.github.io/morris.js/donuts.html}{here}.
#' 
#' Donut charts behave differently from the other charts: input data should
#' be a list of two elements, \code{labels} and \code{values}
#' 
#' @param morrisjs a \code{\link{morrisjs}} object,
#' @param options an optional list of parameters
#' @export
mjsDonut <- function(morrisjs, options = NULL){
  
  # Transform data
  donutData <- morrisjs$x$data
  morrisjs$x$data <- lapply(1:length(donutData[[1]]), function(i) {
    list(label = donutData[[1]][i], value = donutData[[2]][i])
  })
  
  # Add options
  if (!is.null(options)){
    morrisjs$x <- c(morrisjs$x, options)
  }
  morrisjs$x$type <- "Donut"
  morrisjs
}