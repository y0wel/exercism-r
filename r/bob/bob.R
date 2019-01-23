bob <- function(input) {
  input <- trimws(input, "right")
  if (input == "") {
    return("Fine. Be that way!")
  }
  if (utf8ToInt(input)[nchar(input)] == 63 & 
      toupper(input) == input &
      tolower(input) != input) {
    return("Calm down, I know what I'm doing!")
  }
  if (utf8ToInt(input)[nchar(input)] == 63) {
    return("Sure.")
  }
  if (toupper(input) == input & tolower(input) != input) {
    return("Whoa, chill out!")
  }
  return("Whatever.")
}
