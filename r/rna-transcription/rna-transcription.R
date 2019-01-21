to_rna <- function(dna) {
  if(all(unlist(strsplit(dna, split = "")) %in% c("A", "C", "G", "T"))) {
    dna <- gsub("A", "U", dna)
    dna <- gsub("T", "A", dna)
    dna <- gsub("C", "Z", dna)
    dna <- gsub("G", "C", dna)
    dna <- gsub("Z", "G", dna)
    dna
  } else {
    stop("Invalid Input!")
  }
}
