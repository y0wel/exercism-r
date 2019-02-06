is_isogram <- function(word) {
  if (nchar(word) != 0) {
    word <- gsub("[^[:alnum:]]", "", word)
    word_vec <- unlist(strsplit(tolower(word), split = ""))
    if (max(table(word_vec)) == 1) {
      return(TRUE)
    } else {
      return(FALSE)
    }
  } else {
    return(TRUE)
  }
}