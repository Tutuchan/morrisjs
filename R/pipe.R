#' Pipe operator
#'
#' Imports the pipe operator from magrittr.
#'
#' @importFrom magrittr %>%
#' @export
#' @param lhs a \code{\link{morrisjs}} object
#' @param rhs a charting function
#' @rdname pipe
#' @examples
#' morrisjs(mdeaths) %>% mjsLine()
`%>%` <- magrittr::`%>%`