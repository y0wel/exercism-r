sum_of_multiples <- function(factors, limit) {
  n <- 1:(limit - 1)
  res_vec <- rep(c(n), length(factors))
  calc <- as.data.frame(t(sapply(n, `%%`, factors)))
  res_vec <- res_vec[which(calc == 0)]
  sum(res_vec[which(duplicated(res_vec) == FALSE)])
}
