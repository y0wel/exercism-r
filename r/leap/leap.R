leap <- function(year) {
  if (year %% 4 == 0) {
    if (year %% 100 != 0) {
      TRUE
    } else {
      if (year %% 400 == 0) {
        TRUE
      } else {
        FALSE
      }
    }
  } else {
    FALSE
  }
}
