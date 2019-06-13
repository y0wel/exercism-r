nucleotide_count <- function(input) {
  output <- 
    list(
      A = 0,
      C = 0,
      G = 0,
      T = 0
    )
  if (nchar(input) == 0) {
    return(output)
  }
  input_v <- unlist(strsplit(input, split = ""))
  if (FALSE %in% (input_v %in% names(output))) {
    stop("Error! Detected some invalid nucleotides")
  } else {
    output[["A"]] <- sum(ifelse(input_v == "A", 1, 0))
    output[["C"]] <- sum(ifelse(input_v == "C", 1, 0))
    output[["G"]] <- sum(ifelse(input_v == "G", 1, 0))
    output[["T"]] <- sum(ifelse(input_v == "T", 1, 0))
    return(output)
  }
}
