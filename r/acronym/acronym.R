acronym <- function(input) {
  input <- gsub("-", " ", input)
  input <- gsub(",", "", input)
  input <- strsplit(input, split = " ")[[1]]
  output <- c()
  for(i in 1:length(input)) {
    output <- append(output, toupper(substr(input[i], 1, 1)))
  }
  paste0(output, collapse = "")
}
