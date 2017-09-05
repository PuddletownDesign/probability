# This program calculates the probability of getting all heads and 
# the probability of getting at least one tails when flipping a coin x number of times 

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

message("Let's flip coins!\n\n")

message("Tell me how many times you want to flip a coin and I'll tell you what your chances are of getting ALL heads in a row!")
message("PS. I'll also tell you what your chances are of getting a single tails :)")
message("To stop flipping enter 0\n")

# assign one to flips so we can enjoy the while loop
flips <- 1

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
	
	coin.flip(flips)
}

print("Good Bye!")
