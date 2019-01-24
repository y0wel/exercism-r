anagram <- function(subject, candidates) {
  result <- c()
  candidates <- candidates[which(nchar(candidates) == nchar(subject))]
  candidates <- candidates[which(tolower(candidates) != tolower(subject))]
  if(length(candidates) == 0) {
    return(result)
  }
  subject <- table(unlist(strsplit(tolower(subject), split = "")))
  for(i in 1:length(candidates)) {
    check <- table(unlist(strsplit(tolower(candidates[i]), split = "")))
    if(all(names(subject) == names(check)) == T & 
       length(subject) == length(check)) {
      if (min(subject - check) == 0 & max(subject - check) == 0) {
        result <- append(result, candidates[i])
      }
    }
  }
  return(result)
}