pascals_triangle <- function(n) {
  if (n < 0 | is.null(n)) {
    stop("Error!")
  }
  output <- list()
  if (n == 0) {
    return(output)
  }
  vec <- c()
  for(i in 1:n) {
    if (i == 1) {
      vec <- 1
    }
    if (i == 2) {
      vec <- c(1, 1)
    }
    if (i > 2) {
      vec <- c()
      old_row <- output[[i - 1]]
      new_row <- c(0)
      new_row <- append(new_row, old_row[-length(old_row)])
      vec <- append(vec, c(old_row + new_row, 1))
    }
    output[[i]] <- vec
  }
  return(output)
}