# `r` Coin Flip

When you flip a coin the probability of getting heads or tails is 1
one OR the other has to happen so we say that ... 

```
for every coin flips there are TWO possible outcomes -- we are certain we will get 1 of these 2
There is a 100% probability that when we flip a coin one of two possible outcomes will happen
There is 0% probability that we will not get tails or heads when flipping a coin
```

For our purposes we will refer to 100% as 1
1 represents certainty. If you flip a coin the probability of getting heads or tails is 1.

each coin flip is independent of the previous so when we flip a coin we say we have a 50% chance of getting tails
and 50% chance of getting heads.

if we know that there is a 50% chance of getting heads or tails when we flip a coin once
what is the probability of having at least one head in 3 flips?
it is the same as having not all tails in 3 flips

what is the probability of having all tails in 3 flips?
to figure this out we have to look at all the combinations that CAN happen when flipping a coin 3 times

``` TTT, TTH, THH, THT, HTT, HHT, HTH, HHH ```

there are 8 possible combinations of heads and tails for a 3 time coin flip
out of those 8 only one will give us three tails
but all 8 ways are EQUALLY probable
so we say the probability of getting three tails in a row when flipping a coin is 1 / 8


what is the probability of having at least one head in 3 flips
it is the same as having not all tails in 3 flips
where 1 represents the 100% probability that we will have an outcome of either heads OR tails

```
 1 - Probability( 3 tails in a row )
 1 - (1/8)
 (8/8) - (1/8) = 7/8 = 87%
```

flips is the # of times a coin will be flipped in the experiment
every coin flip is independent of a previous coin flip
every coin flip has two possible outcomes: heads or tails
possible outcomes is always 2

For our 3 times coin flip example: 
```
 flips = 3
 flipOutcomes = 2
 numberofWays = flipOutcomes ** flips ( 2 to the power of 3)
```

what is the probability of getting at least one head in 10 flips
it is the same as probability of getting not all tails in 10 flips

okay so what's the probability of getting 10 tails in 10 consecutive flips?
to answer that we first need to know how many possible combinations of H and Ts can there be
when we flip a coin 10 times.

```
# When we flip a coin 3 times we found that there are 8 possible combinations that can occur
 TTT, TTH, THH, THT, HTT, HHT, HTH, HHH
```

it would take a really long time to write out all the combinations heads and tails can occur in
for a 10 times coin flip: TTTTTTTTTT, TTTTTTTTTH, TTTTTTTTHH, TTTTTTTHHH ... you get the point
in our 3 times coin flip example we also learned a faster mathematical way of figuring out the number of ways
heads and tails can combine when flipping a coin multiple times

```
 flips = 10
 flipOutcomes = 2
 numberofWays = flipOutcomes ** flips ( 2 to the power of 10 )
 2 ** 10 = 1024
```

there are 1024 possible combinations of H and T when flipping a coin 10 times
 the probabiliyt of getting 10 tails in a row is 1 / 1024

# the probability of getting at least one H when flipping a coin 10 times is
# 1 - probability( 10 tails in a row )
# 1 - 1/1024
# (1024/1024) - (1/1024) = 1023/1024 = 99%

Using `r` program a generator that will take a variable number of coin flips and calculate the probability of generating heads or tails x number of times.

example:

*   HH is 33% chance
*   HHH is 16% chance
*   HTH is 16% chance

Make sure decimals are converted into percentages.

```
coin.flip <- function(flips) {
        flipOutcomes = 2
        numberofWays = flipOutcomes ** flips

        allHeads = 1 / numberofWays
        atLeastOneTails = 1 - ( 1 / numberofWays)

        allHeadsPercent = format(round(allHeads * 100, 2), nsmall = 2)
        atLeastOneTailsPercent = format(round(atLeastOneTails * 100, 2), nsmall = 2)

        cat("Probability of getting all heads is: ", allHeadsPercent)
        cat("\nProbability of getting at least one tails is: ", atLeastOneTailsPercent )
        cat("\n\n\n")

}
```

*   [Use this Khan Academy video as reference](https://www.youtube.com/watch?v=mkyZ45KQYi4&list=PL06A16C388F14E6FE&index=6)
*   [Here is a basic guide to simulating a coin toss in r](http://www.rfortraders.com/simulation-of-a-coin-toss-in-r/)
