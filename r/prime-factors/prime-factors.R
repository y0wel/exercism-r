prime_factors <- function(number) {
  i <- 2
  result <- c()
  while (number > 1) {
    if (number %% i == 0) {
      number <- number / i
      result <- append(result, i)
    } else {
      i <- i + 1
    }
  }
  return(result)
}
