square <- function(n) {
  options(scipen = 999)
  if (n < 1 | n > 64) {
    stop("Input out of range! Choose a number between 1 and 64.")
  }
  results <- c(1)
  if (n == 1) {
    results[1]
  } else {
    for(i in 1:(n - 1)) {
      results <- append(results, results[i] * 2) 
    }
    results[n]
  }
}

total <- function() {
  options(scipen = 999)
  results <- c(1)
  for(i in 1:63) {
    results <- append(results, results[i] * 2) 
  }
  sum(results)
}
