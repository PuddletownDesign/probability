
# Basic coin flip function

cf <- function(x) {
    1/(x*2) * 100
}

# Generate a percentage for each flip in an array

odds = c()

# i is the number of times the coin will be flipped

for (i in 1:10) {
    odds <- append(cf(i), odds)
}

# Now chart the array
plot(rev(odds), type="l")