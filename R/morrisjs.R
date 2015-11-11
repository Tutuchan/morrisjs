#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
morrisjs <- function(message, width = NULL, height = NULL) {

  # forward options using x
  x = list(
    message = message,
    id = paste0("htmlwidget-", digest::digest(message))
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'morrisjs',
    x,
    width = width,
    height = height,
    package = 'morrisjs',
    elementId = x$id
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
