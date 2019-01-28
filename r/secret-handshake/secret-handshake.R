handshake <- function(n) {
  bin <- c()
  result <- c()
  secret <- c("wink", "double blink", "close your eyes", "jump")
  if (n == 0) {
    return(result)
  }
  while(n > 0) {
    bin <- append(bin, n %% 2)
    n <- floor(n / 2)
  }
  if (length(bin) <= 4) {
    return(secret[which(bin == 1)])
  } 
  if (length(bin) == 5) {
    bin <- bin[1:4]
    if (all(bin == 0)) {
      return(result)
    } else {
      return(rev(secret[which(bin == 1)]))
    }
  }
  if (length(bin) > 5 ) {
    return(result)
  }
}