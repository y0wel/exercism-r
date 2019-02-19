parse_phone_number <- function(number_string) {
  number_string <- gsub("[[:punct:]]|[[:blank:]]|[[:alpha:]]", "", number_string)
  code <- c("2", "3", "4", "5", "6", "7", "8", "9")
  if (nchar(number_string) == 11 & startsWith(number_string, "1")) {
    number_string <- substr(number_string, 2, nchar(number_string))
  }
  if (nchar(number_string) == 10) {
    if (any(startsWith(number_string, code)) &
        substr(number_string, 4, 4) %in% code) {
      return(number_string)
    }
  }
  return(NULL)
}
