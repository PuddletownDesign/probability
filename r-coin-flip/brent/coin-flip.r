# pass the number of times the coin will be flipped

cf <- function(x) {
    flips <- x # the pass parameter of number of flips
    outcomes <- 2 # number of possible outcomes each flip
    totalOutcomes <- `^`(flips,outcomes) # total number of outcomes
    decimal <- 1/totalOutcomes # a decimal of the probability
    percent <- decimal * 100 # percentage of probability
    paste(c(percent, "%"), collapse = " ") # concatenating the string with percent sign
}

cf(4)