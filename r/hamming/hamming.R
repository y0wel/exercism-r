# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  if (nchar(strand1) != nchar(strand2)) {
    stop("Strands differ in length!")
  } else {
    strand1 <- strsplit(strand1, split = "")[[1]]
    strand2 <- strsplit(strand2, split = "")[[1]]
    result <- strand1 == strand2
    length(result[which(result == FALSE)])
  }
  
}
