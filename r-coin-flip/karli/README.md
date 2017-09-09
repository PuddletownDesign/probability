# `r` Coin Flip

When you flip a coin the probability of getting heads or tails is 1.
One _or_ the other has to happen so we say that ...

    for every coin flips there are TWO possible outcomes -- we are certain we will get 1 of these 2

    There is a 100% probability that when we flip a coin one of two possible outcomes will happen
    There is 0% probability that we will not get tails or heads when flipping a coin

For our purposes we will refer to 100% as 1. 1 represents certainty. If you flip a coin the probability of getting heads or tails is 1.

Each coin flip is independent of the previous so when we flip a coin we say we have a 50% chance of getting tails and 50% chance of getting heads. Together these two add up to 100% chance that one or the other will happen.

If we know that there is a 50% chance of getting heads or tails when we flip a coin once
what is the probability of having at least one head in 3 flips? It is the same as having not all tails in 3 flips.

Okay, so what is the probability of having all tails in 3 flips?
To figure this out we have to look at all the combinations that **can** happen when flipping a coin 3 times

`TTT, TTH, THH, THT, HTT, HHT, HTH, HHH`

There are 8 possible combinations of heads and tails for a 3 time coin flip. Out of those 8 only one will give us three tails, but all 8 ways are **equally** probable
so we say the probability of getting three tails in a row when flipping a coin is 1 / 8

What is the probability of having at least one head in 3 flips?
It is the same as having not all tails in 3 flips where 1 represents the 100% probability that we will have an outcome of either heads OR tails

     1 - Probability( 3 tails in a row )
     1 - (1/8)
     (8/8) - (1/8) = 7/8 = 87%

Flips is the # of times a coin will be flipped in the experiment.
Every coin flip is independent of a previous coin flip. Every coin flip has two possible outcomes: heads or tails. Possible outcomes for a single flip is always 2.

For our 3 times coin flip example:

     flips = 3
     flipOutcomes = 2
     numberofWays = flipOutcomes ** flips ( 2 to the power of 3)

What is the probability of getting at least one head in 10 flips?
It is the same as probability of getting not all tails in 10 flips.

Okay so what's the probability of getting 10 tails in 10 consecutive flips?
To answer that we first need to know how many possible combinations of H and Ts can there be when we flip a coin 10 times.

    # When we flip a coin 3 times we found that there are 8 possible combinations that can occur
    TTT, TTH, THH, THT, HTT, HHT, HTH, HHH

It would take a really long time to write out all the combinations heads and tails can occur for a 10 times coin flip: TTTTTTTTTT, TTTTTTTTTH, TTTTTTTTHH, TTTTTTTHHH ... you get the point. In our 3 times coin flip example we also learned a faster mathematical way of figuring out the number of ways heads and tails can combine when flipping a coin multiple times:

     flips = 10
     flipOutcomes = 2
     numberofWays = flipOutcomes ** flips ( 2 to the power of 10 )
     2 ** 10 = 1024

There are 1024 possible combinations of H and T when flipping a coin 10 times the probability of getting 10 tails in a row is 1 / 1024

The probability of getting at least one H when flipping a coin 10 times is

      1 - probability( 10 tails in a row )
      1 - 1/1024
      (1024/1024) - (1/1024) = 1023/1024 = 99%

Using `r` program a generator that will calculates the probability of getting all heads and the probability of getting at least one tails when flipping a coin x number of times

example:

-   HH is 33% chance
-   HHH is 16% chance
-   HTH is 16% chance

Make sure decimals are converted into percentages.

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

-   [Use this Khan Academy video as reference](https://www.youtube.com/watch?v=mkyZ45KQYi4&list=PL06A16C388F14E6FE&index=6)
-   [Here is a basic guide to simulating a coin toss in r](http://www.rfortraders.com/simulation-of-a-coin-toss-in-r/)

# Part 2

If you flip a coin four times what is the probability that exactly one is heads.

`P(exactly 1 heads) = P(HTTT) + P(THTT) + P(TTHT) + P(TTTH)`

There are 16 different HT combinations that can happen when you flip a coin 4 times.

One head is 1/16 probability.

So if we add up all the events where we have exactly one head there is a 4/16 chance of having exactly one head when you flip a coin 4 times. 4/16 is equal to 1/4.

What is the probability of getting exactly two heads when you flip a coin four times.

There are 16 equally likely possibilities.

HHHH  HTHH  THHH  TTHH
HHHT  HTHT  THHT  TTHT
HHTH  HTTH  THTH  TTTH
HHTT  HTTT  THTT  TTTT

P(exactly 2 heads) = 6/16 = 3/8

Flip outcome:

    _ _ _ _
    1 2 3 4

If you place one H in one of 4 slots above then you only have 3 more spots for another H.

The first H would have 4 slot options to choose from -- it could go into slot 1, slot 2, slot 3, or slot 4. Once it is placed then second H would only have three slots left to choose from. Since there are four options for the first H and 3 options for the second H we multiply 4 x 3 to account for all the combinations they could be.

So we end up with 12 different scenarios.

There would only be 12 different scenarios if we were looking at the first head and the second head as two different heads. So we divide by two 12/2 = 6 different scenarios.

There is a 6/16th or 3/8ths chance of getting exactly two heads when flipping a coin four times.

Protocol:

-   Figure out how many different combinations of heads and tails can there occur for a given number of coin flips:

`numberOfWays =  flipOutcomes ** flips`

-   Calculate number of different scenarios that contain sequence searched for.


        calculateNumberofScenarios <- function(flips, lengthofSequence) {

          numberOfScenarios = 1
          counterSequence = lengthofSequence

          while( counterSequence != flips ) {
            counterSequence = counterSequence + 1
            numberOfScenarios = numberOfScenarios * counterSequence

            cat("Length of Sequence: ", counterSequence)
            cat("\n")
          }

          # to make up for overcounting
          numberOfScenarios = numberOfScenarios / lengthofSequence

          cat("Number of scenarios is: ", numberOfScenarios)
          return(numberOfScenarios)
        }

-   Find the probability of getting the squence in a given number of coin flips by taking the numberofScenarios and dividing it by numberOfWays

`P(exactly x tails) = numberofScenarios / numberOfWays`
