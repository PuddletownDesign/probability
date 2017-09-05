calculate.probabilty.of.sequence <- function(cointossSequence="HHT", ...) {
	samples <- sample(c(-1,1), 1000, replace = TRUE)
	print(samples)
}

toss <- calculate.probabilty.of.sequence("HH")

plot(cumsum(toss), type="l")
