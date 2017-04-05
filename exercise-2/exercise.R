# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  different <- abs(length(v1) - length(v2))
  different.string <- paste('The difference in lengths is', different)
  return(different.string)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3,4), 1:7)


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  different <- length(v1) - length(v2) 
  if(different > 0) {
    sentence <- paste('Your first vector is longer by', different, 'elements')
  } else {
    sentence <- paste('Your second vector is longer by', different, 'elements')
  }
  
  return(sentence)
}


# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:7, c(1,2))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1, v2) {
  different <- length(v1) - length(v2) 
  if(different > 0) {
    vector.name <- deparse(substitute(v1))
    sentence <- paste('Vector', different, 'elements')
  } else {
    vector.name <- deparse(substitute(v2))
    sentence <- paste('Your second vector is longer by', different, 'elements')
  }
  
  return(sentence)
} 