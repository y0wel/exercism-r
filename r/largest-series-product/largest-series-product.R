largest_series_product <- function(digits, span) {
  if (span > nchar(digits)) {
    stop("Span longer than string")
  }
  if (span < 0) {
    stop("Negative span")
  }
  if (span == 0) {
    return(1)
  }
  if (nchar(digits) == 0 & span != 0) {
    stop("Empty string")
  }
  numbers <- unlist(strsplit(digits, split = ""))
  if (isFALSE(all(grepl("[[:digit:]]", numbers)))) {
    stop("String contains invalid characters")
  }
  numbers <- as.integer(numbers)
  result <- c()
  for(i in 1:(length(numbers) - span + 1)) {
    result <- append(result, prod(numbers[i:(i+span-1)]))
  }
  return(max(result))
}
