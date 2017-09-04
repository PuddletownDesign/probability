# Introduction to Probability

Examples and notes for the book Introduction to probability

## Chapter 01

### Notation

*   `S` - **Sample Space** - The space in which probabilities are measured. Spaces may contain sub and macro spaces
*   `∪` - **Union** - an `OR` statement
*   `∩` - **Intersection** - an `AND` statement
*   `c` - **compliment** - a `!NOT` statement
*   `∈` - **Event** - an event occurring
*   `⊆` - **Subset**
*   `⊆/` - **not in subset**
*   `j`  - **number of events**
*   `ø`  - **empty set**
*   `A1,…, An` - **Partition** - A range of events outcomes

### Example Usage

![Pebbles](http://tinyimg.io/i/Mcn98PT.jpg)

*   `A` is a set of 5 pebbles
*   `B` is a set of 4 pebbles
*   `A ∪ B` consists of the 8 pebbles in `A` or `B` (including the pebble that is in both)
*   `A ∩ B` consists of the pebble that is in both `A` and `B`
*   `Ac` consists of the 4 pebbles that are not in `A`.

#### Drawing a card

`(D ∪ H)c = Dc ∩ Hc = B`
not a diamond or a heart = 
not a diamond and not a heart =
*it is a black card*

## r language

### Installing r on mac

if brew in not installed run 

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Then install r with homebrew

```
brew tap homebrew/science
brew install r
```

#### Helpful tips

* R will display a `+` for prompt for incomplete commands
* Use arrow up to bring up last r command
* arrow down moves forward in command list
* Add comments using hashes `# this is a comment`

### r Syntax

Assign a value to an object

```
x = 11
or
x <- 11
```

read value from object

```
print(x)
or
x
```

list all objects

```
ls()
```

remove an object

```
rm(x)
```

R is case sensitive. Objects may contain dots such as `x.1`.

Strings must be put in double quotation marks. `x = "omg"`

There's no lazy type conversion like with javascript `"1" != 1`

Get the square root of a number

```
sqrt(9)
```

Raise number by power (of half in example)

```
12^(1/2)
```

Logarithm

```
log(x)
```

Exponent 

```
exp(x)
```

Log with different bases (base 2 in example)

```
log2(x)
```

Calculate absolute values

```
abs(-12)
```

