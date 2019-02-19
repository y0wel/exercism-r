lyrics <- function(first, last) {
  output <- c()
  for (n in first:last) {
    output <- append(output, verse(n))
  }
  paste(output, collapse = "\n")
}

verse <- function(number) {
  first <- paste(number, "bottles")
  second <- paste(number - 1, "bottles")
  phrase <- "Take one down and pass it around,"
  if (number == 2) {
    second <- paste(number - 1, "bottle")
  }
  if (number == 1) {
    first <- paste(number, "bottle")
    second <- paste("no more bottles")
    phrase <- "Take it down and pass it around,"
  }
  if (number == 0) {
    first <- paste("No more bottles")
    second <- paste("99 bottles")
    phrase <- "Go to the store and buy some more,"
  }
  paste(sep = "\n",
        paste(first, "of beer on the wall,", tolower(first), "of beer."),
        paste(phrase, second, "of beer on the wall.\n"))
}
