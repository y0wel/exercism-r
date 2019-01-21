raindrops <- function(number) {
  sounds <- c("Pling", "Plang", "Plong")
  if (0 %in% (number %% c(3, 5, 7))) {
    paste(sounds[which(number %% c(3, 5, 7) == 0)], collapse = "")
  } else {
    paste(number)
  }
}
