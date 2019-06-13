scrabble_score <- function(input) {
  if (nchar(input) == 0) {
    return(0)
  }
  input <- tolower(input)
  one <- c("a", "e", "i", "o", "u", "l", "n", "r", "s", "t")
  two <- c("d", "g")
  three <- c("b", "c", "m", "p")
  four <- c("f", "h", "v", "w", "y")
  five <- c("k")
  eight <- c("j", "x")
  ten <- c("q", "z")
  input <- unlist(strsplit(input, split = ""))
  sum(ifelse(input %in% one, 1,
    ifelse(input %in% two, 2,
      ifelse(input %in% three, 3,
        ifelse(input %in% four, 4,
          ifelse(input %in% five, 5,
            ifelse(input %in% eight, 8,
              ifelse(input %in% ten, 10, 0)
            )
          )
        )
      )
    )
  ))
}
