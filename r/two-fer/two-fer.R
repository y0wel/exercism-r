two_fer <- function(input = "") {
  paste0("One for ", ifelse(input != "", input, "you"), ", one for me.")
}
