# `r` Coin Flip

## Tasks

![coinflip](https://68.media.tumblr.com/cf0b431f9472e7ae28034fc840263625/tumblr_o0n2lhOtzH1t0qqjbo1_500.gif)

# Part 1

Using `r` program a generator calculates the probability of getting all heads and
the probability of getting one tails when flipping a coin x number of times

# Part 2

Now extend the program written in part 1 to calculate the probability of getting x number of heads for x number of flips (regardless of order).

If I flip a coin 10 times what is the probability of getting 5 heads, 4 heads, 9 heads, 8 heads ... etc?

# Part 3

Now extend the program written in part 2 to prompt the user for a sequence (see below) and provide the probability of that sequence occurring when a coin is flipped x number of times.  

example:

-   HH is 25% chance
-   HHH is 12.5% chance
-   HTH is 12.5% chance

Make sure decimals are converted into percentages.

**Use your own folder for code samples and take notes in `README.md`**

# Part 1

-   [Use this Khan Academy video as reference](https://www.youtube.com/watch?v=mkyZ45KQYi4&list=PL06A16C388F14E6FE&index=6)
-   [Here is a basic guide to simulating a coin toss in r](http://www.rfortraders.com/simulation-of-a-coin-toss-in-r/)

## Part 1 Solutions

```r
cf <- function(x) {
    flips <- x # the pass parameter of number of flips
    totalOutcomes <- outcomes**x # total number of outcomes
    decimal <- 1/totalOutcomes # a decimal of the probability
    percent <- decimal * 100 # percentage of probability
    paste(c(percent, "%"), collapse = " ") # concatenating the string with percent sign
}
```

# Part 2

-   [Use this guide for part 2](https://www.fourmilab.ch/rpkp/experiments/statistics.html)

## Other references

-   <https://www.youtube.com/watch?v=8TIben0bJpU>
-   <https://www.fourmilab.ch/rpkp/experiments/statistics.html>
