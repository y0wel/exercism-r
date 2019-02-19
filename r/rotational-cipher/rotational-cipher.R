rotate <- function(text, key) {
  get_position <- function(value, key) {
    range_low <- utf8ToInt("a"):utf8ToInt("z")
    range_up <- utf8ToInt("A"):utf8ToInt("Z")
    if (isFALSE(value %in% range_low) & isFALSE(value %in% range_up)) {
      return(value)
    }
    if (value %in% range_low) {
      min <- min(range_low)
      max <- max(range_low)
    } 
    if (value %in% range_up) {
      min <- min(range_up)
      max <- max(range_up)
    }
    while (key != 0) {
      if (value + key > max) {
        key <- key - (max + 1 - value)
        value <- min
      } else {
        value <- value + key
        key <- 0
      }
    }
    return(value)
  }
  intToUtf8(unlist(lapply(utf8ToInt(text), get_position, key = key)))
}





