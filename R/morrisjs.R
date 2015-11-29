#' morris.js plot
#'
#' This function prepares the widget to be drawn. 
#' 
#' In the case of a \code{data.frame} or a \code{tbl_df}, the first column must
#' be a object that can be interpreted as a \code{Data}, the other columns being
#' the data values.
#' 
#' @param data the data to be drawn, can be a \code{ts}, \code{mts}, \code{xts},
#' \code{data.frame} or \code{tbl_df} object.
#' @param width the width of the widget (in pixels),
#' @param height the height of the widget (in pixels).
#'
#' @import htmlwidgets
#'
#' @export
morrisjs <- function(data, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    data = data,
    element = paste0("htmlwidget-", digest::digest(data))
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'morrisjs',
    x,
    width = width,
    height = height,
    package = 'morrisjs',
    elementId = x$element
  )
}

#' Widget output function for use in Shiny
#'
#' @export
morrisjsOutput <- function(outputId, width = '100%', height = '400px'){
  shinyWidgetOutput(outputId, 'morrisjs', width, height, package = 'morrisjs')
}

#' Widget render function for use in Shiny
#'
#' @export
renderMorrisjs <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, morrisjsOutput, env, quoted = TRUE)
}
