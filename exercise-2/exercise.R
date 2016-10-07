# Exercise 2: Subsetting and Manipulating Vectors

# Create a vector `x` that the numbers 5,2,6,2,1,7
x <- c(5, 2, 6, 2, 1, 7)

# Create a vector `y` that has the numbers 2,3
y <- c(2, 3)

# Create a vector `z` by adding (not combining, but adding) `x` and `y` (note the recycling!)
z <- x + y

# Create a vector `first.three` that has the first three elements of `z` in it
first.three <- z[1:3]

# Create a vector `small` that has the values of `z` that are less than 5
CheckSmall <- function(vector) {
  small <- c();
  for (value in vector) {
    if (value < 5) {
      small <- c(small, value)
    }
  }
  return(small)
}

small <- CheckSmall(z)
# Create a vector `large` that has the values of `z` that are greater than or equal to 5
CheckLarge <- function(vector) {
  large <- c();
  for (value in vector) {
    if (value > 5) {
      large <- c(large, value)
    }
  }
  return(large)
}

large <- CheckLarge(z)
### Bonus ###

# Replace the values in `z` that are larger than 5 with the number 5
ReplaceFive <- function(vector) {
  new.z <- c()
  for (value in vector) {
    if (value > 5) {
      new.z <- c(new.z, 5)
    } else {
      new.z <- c(new.z, value)
    }
  }
  return(new.z)
}

replace.z <- ReplaceFive(z)

# Replace every other value in `z` with the number 0
ReplaceZero <- function(vector) {
  replace.zero <- c()
  for (value in vector) {
    if (length(replace.zero) %% 2 == 0) {
      replace.zero <- c(replace.zero, value)
    } else {
      replace.zero <- c(replace.zero, 0)
    }
  }
  return(replace.zero)
}

new.replace.zero <- ReplaceZero(z)