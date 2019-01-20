space_age <- function(seconds, planet) {
  e_sec <- 31557600
  planets <- c(
    "mercury",
    "venus",
    "earth",
    "mars",
    "jupiter",
    "saturn",
    "uranus",
    "neptune"
  )
  time <- c(
    e_sec * 0.2408467,
    e_sec * 0.61519726,
    e_sec,
    e_sec * 1.8808158,
    e_sec * 11.862615,
    e_sec * 29.447498,
    e_sec * 84.016846,
    e_sec * 164.79132
  )
  lookup <- data.frame(planets, time, stringsAsFactors = FALSE)
  round(seconds / lookup[which(lookup$planets == tolower(planet)), 'time'], digits = 2)
}
