#' @export
mjsLine <- function(morrisjs){
  tsData <- morrisjs$x$data
  
  xtsData <- xts::as.xts(tsData)
  xkey <- switch(class(index(xtsData)),
                 yearmon = substr(zoo::as.Date.yearmon(index(xtsData)), 1, 7))
  
  
  morrisjs$x$data <- lapply(1:nrow(xtsData), function(i) {
    l <- c(list(xkey[i]), as.list(as.character(xtsData[i])))
    names(l) <- c("date", names(xtsData))
    if (any(is.na(l))) l[is.na(l)] <- 'null'
    l
  })
  morrisjs$x$xkey = "date"
  morrisjs$x$ykeys = names(xtsData)
  morrisjs$x$labels = names(xtsData)
  
  morrisjs
  
}