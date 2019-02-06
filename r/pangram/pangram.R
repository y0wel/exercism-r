is_pangram <- function(input) {
  input <- tolower(gsub("[^[:alpha:]]", "", input))
  check <- length(unique(strsplit(input, split = "")[[1]]))
  ifelse(check == 26, TRUE, FALSE)
}
