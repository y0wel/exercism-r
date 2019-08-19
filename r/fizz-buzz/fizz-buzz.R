fizz_buzz <- function(input) {
  input <- seq(1, input)
  ifelse(input %% 3 == 0 & input %% 5 != 0, "Fizz",
         ifelse(input %% 5 == 0 & input %% 3 != 0, "Buzz",
                ifelse(input %% 3 == 0 & input %% 5 == 0, "Fizz Buzz",
                input)))
}
