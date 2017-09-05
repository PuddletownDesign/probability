# Brent's Notes

## Video Notes

P(3 head in 3 flips)

**3 flips**

2x2x2 = 8 possible outcomes = 1/8 \* 100 = 12.5% probability.

**4 flips**

4 flips = 2x2x2x2 = 16 possible outcomes = 1/16 \* 100 = 6.25% probability.

p(3 heads in 3 flips) = p(3 tails in 3 flips)

## `r` Notes

### 10 coin tosses in a row

1.  make a function for a sequence of tosses
2.  create a sample of 2 possibilities -1 or 1`c(-1,1)`
3.  10 iterations

## Writing my r code

Because I know that we that we need specific outcomes for input, I'll make a basic function

```r
cf <- function(x) {
    flips <- x # the pass parameter of number of flips
    outcomes <- 2 # number of possible outcomes each flip
    totalOutcomes <- `^`(flips,outcomes) # total number of outcomes
    decimal <- 1/totalOutcomes # a decimal of the probability
    percent <- decimal * 100 # percentage of probability
    paste(c(percent, "%"), collapse = " ") # concatenating the string with percent sign
}
```

### Golfing it

```r
cf <- function(x) {
    print(1/`^`(x,2) * 100)
}
```

### Charting the probability of 10 flips

```r
# Basic coin flip function

cf <- function(x) {
    1/`^`(x,2) * 100
}

# Generate a percentage for each flip in an array

odds = c()
for (i in 1:10) {
    odds <- append(cf(i), odds)
}

# Now chart the array
plot(rev(odds), type="l")
```

![chart of outcomes](http://tinyimg.io/i/7FcQLCV.png)

Ok it looks like my math is fucked up as 1 flip should not generate 100% chance
