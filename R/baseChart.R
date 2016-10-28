#' @importFrom xts as.xts 
#' @importFrom zoo index as.Date.yearmon
baseChart <- function(morrisjs, type, options){
  tsData <- morrisjs$x$data
  
  # Transform data to xts
  xtsData <- switch(
    class(tsData)[1],
    tbl_df = {
      aux <- as.data.frame(tsData)
      as.xts(aux[, -1], order.by = aux[, 1])
    },
    data.frame = as.xts(tsData[, -1], order.by = tsData[, 1]),
    xts = tsData,
    mts = as.xts(tsData),
    ts = as.xts(tsData))
  
  # Extract the values of the xkey depending on the class of the index
  xkey <- switch(class(index(xtsData)),
                 yearmon = substr(as.Date.yearmon(index(xtsData)), 1, 7),
                 Date = index(xtsData))
  
  # Give a name to the data in case of only one timeseries
  if (is.null(names(xtsData))) names(xtsData) <- "data"
  
  # Create the data part
  morrisjs$x$data <- lapply(1:nrow(xtsData), function(i) {
    l <- c(list(xkey[i]), as.list(as.character(xtsData[i])))
    names(l) <- c("date", names(xtsData))
    if (any(is.na(l))) l[is.na(l)] <- 'null'
    l
  })
  
  # Add general fields
  morrisjs$x$xkey = "date"
  morrisjs$x$ykeys = names(xtsData)
  morrisjs$x$labels = names(xtsData)
  morrisjs$x$type = type
  
  # Add options
  if (!is.null(options)){
    morrisjs$x <- merge_lists(morrisjs$x, options)
  }
  
  morrisjs
  
}