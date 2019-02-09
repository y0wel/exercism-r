collatz <- function(num) {
  if (num <= 0) {
    stop("Error")
  }
  counter <- 0
  while (num > 1) {  
    if (num %% 2 == 0) {
      num <- num / 2
    } else {
      num <- num * 3 + 1
    }
    counter <- counter + 1
  }
  return(counter)
}

collatz_step_counter <- Vectorize(collatz)
