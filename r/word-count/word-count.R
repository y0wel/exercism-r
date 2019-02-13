word_count <- function(input) {
  input <- tolower(gsub("[^[:alnum:]]", " ", input))
  vec <- unlist(strsplit(input, split = " "))
  vec <- vec[which(vec != "")]
  as.list(table(vec))
}
