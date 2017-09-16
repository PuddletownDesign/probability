# This program calculates the probability of getting exactly X number of heads
# when flipping a coin Y number of times 
 
# the factorial function takes a positive integer n and returns the product 
# of the integers from 1 to n denoted by n! and read "n factorial"
# n! = 1 * 2 * 3 ... n
# R has a built in function factorial(x) which does the same thing
# but because this is a n00b tutorial I decided for clarity to write my own
calculate.factorial <-function (positiveInteger) {

	counter = positiveInteger
	product = 1

	while ( counter > 0 ) {
		product = product * counter
		counter = counter - 1
	}

	return(product)
}


# this function returns # of outcomes that have x number of heads
# r has a function choose(n,k)  which does the same thing 
calculate.heads.scenarios <- function(flips, heads) {
	numberofHeadsScenarios = 0

	flipsFactorial = calculate.factorial(flips)
	headsFactorial = calculate.factorial(heads)

	flipsMinusHeadsFactorial = calculate.factorial(flips - heads)

	numberofHeadsScenarios = flipsFactorial / (headsFactorial * flipsMinusHeadsFactorial) 
	cat(sprintf("Number of ways for %s heads to combine for %s flips: %s\n", heads, flips, numberofHeadsScenarios))
	
	return(numberofHeadsScenarios)
}

# this function returns the probability of getting
# x number of heads in x number of flips
calculate.probability.of.sequence <- function(flips, heads) {

	flipOutcomes = 2 
	numberofWaysFlips = flipOutcomes ** flips

	numberofWaysHeads = calculate.heads.scenarios(flips, heads)
	probability = numberofWaysHeads / numberofWaysFlips 

	return(probability)
}


message("\nLet's flip coins!\n")

message("You tell me how many heads you'd like to get in a number of coin flips and I'll tell you the probability of getting that many heads.\n")
message("PS. Enter 0 to stop flipping\n\n\n")
 
# assign one to flips so we can enjoy the while loop
flips <- 1
numberofHeads <- 0

while ( flips > 0 ) {
	# get input from user
	cat("How many times would you like to flip a coin: ")
	flips <- readLines("stdin", 1) 

	#convert character into integer
	flips <- as.integer(flips)

	# make sure turkey did not mess up entering a number
	if ( is.na(flips) ) {
		
		cat("Enter a number ffs:")
		flips <- readLines("stdin", 1)
	
	}	 

	if ( flips > 0 ) {
		cat("Exactly how many heads are you looking for: ")
		numberofHeads <-readLines("stdin", 1)
		numberofHeads <- as.integer(numberofHeads)

		if (is.na(numberofHeads)) {

			cat("Enter number of heads ffs: ")
			numberofHeads <- readLines("stdin", 1)

		} else if ( numberofHeads > flips ) {

			cat("Number of heads cannot be greater than number of flips.\n")
			cat("Stop messing around enter number of heads ffs: ")
			numberofHeads <-readLines("stdin", 1) 
		}

		probability <- calculate.probability.of.sequence(flips,numberofHeads)
		probability = format(round(probability * 100, 2), nsmall = 2)
		cat("\nProbability of getting exactly ", numberofHeads)
		cat(" heads in ", flips)
		cat(" is ", probability)
		cat("%\n\n")
	}	
}

print("Good Bye!")
