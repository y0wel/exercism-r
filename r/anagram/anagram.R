anagram <- function(subject, candidates) {
  result <- c()
  candidates <- candidates[which(nchar(candidates) == nchar(subject))]
  candidates <- candidates[which(tolower(candidates) != tolower(subject))]
  if(length(candidates) == 0) {
    return(result)
  }
  cand_list <- lapply(strsplit(tolower(candidates), split = ""), sort)
  subject <- sort(strsplit(tolower(subject), split = "")[[1]])
  cand_list <- lapply(cand_list, function(x) paste0(x, collapse = ""))
  subject <- paste0(subject, collapse = "")
  if(length(cand_list) == 1 & all(subject == cand_list[[1]]) == F) {
    return(result)
  } else {
    result <- candidates[which(lapply(cand_list, function(i) all(match(i, subject))) == TRUE)]
  }
  return(result)
}