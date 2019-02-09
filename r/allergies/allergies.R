allergy <- function(num) {
  out <- c()
  stuff <- 
    c("eggs", "peanuts", "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats")
  number <- c(1, 2, 4, 8, 16, 32, 64, 128)
  df <- data.frame(number, stuff, stringsAsFactors = FALSE)
  while(num > 0) {
    vec <- df[which(number <= num), 'number']
    out <- append(out, df$stuff[which(df$number == max(vec))])
    num <- num - max(vec)
  }
  return(out)
}

allergic_to <- function(allergy_object, allergy) {
  if (allergy %in% allergy_object) {
    return(TRUE)
  } else {
    return(FALSE)
  } 
}

list_allergies <- function(allergy_object) {
  if (is.null(allergy_object) == TRUE) {
    return(character(0))
  }
  allergy_object
}
