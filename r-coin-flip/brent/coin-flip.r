
# Basic coin flip function

cf <- function(x) {
    1/2**x * 100
}

# Generate a percentage for each flip in an array

odds = c()

# i the number of times the coin will be flipped

for (i in 1:10) {
    odds <- append(cf(i), odds)
}

# Now chart the array
plot(rev(odds), type="l", xlab="Flips", ylab="Percent", main="Probability of x correct coin flips in a row")
