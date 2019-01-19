number_type <- function(n) {
  if(n <= 0) {
    stop("Not a natural number!")
  } else {
    numbers <- 1:(n - 1)
    aliquot <- sum(numbers[which(n %% numbers == 0)])
    if (n == aliquot & n != 1) {
      return("perfect")
    }
    if (n > aliquot | n == 1) {
      return("deficient")
    }
    if (n < aliquot & n != 1) {
      return("abundant")
    }
  }
}
