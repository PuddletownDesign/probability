coin.flip <- function(flips) {
	p = 1 / ( flips * 2 ) * 100
	print(p)
	return(p)
}

odds = c()

calculate.probabilty.of.sequence <- function(sequence="HHT", flips=10,  ...) {
	for ( i in 1:flips ) {
		odds <- append(coin.flip(flips), odds)
	}
}

odds <- calculate.probabilty.of.sequence("HH")
print(odds)

