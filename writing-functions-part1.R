# Writing custom functions in R

# Clear current environment
rm(list=ls())

## addOne Function -- note that "x" within function is in "temporary memory"
addOne <- function(x) {
  x+1
}
val <- addOne(x = 20) # val = 21

## addNumber Function
addNumber <- function(x, number) {
  x+number
}
val <- addNumber(x = 20, number = 8) # val = 28

## assigning default values to addNumber
addNumber <- function(x = 0, number = 0) {
  x+number
}
val <- addNumber() # val = 0

## returning more than one value in list form
plusAndMinus <- function(x, y) {
  PLUS <- x + y
  MINUS <- x - y
  list(plus = PLUS, minus = MINUS)
}
output <- plusAndMinus(x = 1:5, y=1:5)

## returning more than one value in vector form
summaryFun <- function(vec, digits = 3) {
  # Create summary statistics
  theMean <- mean(vec)
  theMedian <- median(vec)
  theMin <- min(vec)
  theMax <- max(vec)
  # Combine into single vector
  output <- c(Mean=theMean, Median=theMedian, Min=theMin, Max=theMax)
  round(output, digits = digits)
}
X <- rnorm(50)
summaryFun(X)

## IF/Else Statement within function
posOrNeg <- function(X) {
  
  if (X>0) {
    cat("X is Positive")
  } else if (X==0) {
    cat("X is Zero")
  } else {
    cat("X is Negative")
  }
  
}
posOrNeg(10)
