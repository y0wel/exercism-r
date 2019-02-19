sieve <- function(limit) {
  primes <- c()
  if (limit < 2) {
    return(primes)
  }
  range <- 2:limit
  while(length(range) != 0) {
    primes <- append(primes, range[1])
    range <- range[which(range %in% seq(range[1], limit, by=range[1]) == FALSE)]
  }
  return(primes)
}
