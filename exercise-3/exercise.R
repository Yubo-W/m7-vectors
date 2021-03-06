# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("Yellow", "Black", "Green", "White", "Orange", "Blue")

# Use the `sample` function to select a single marble
random.marble <- sample(marbles)[1]

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(samp) {
  user <- sample(samp)[1]
  chosen <- sample(samp)[1]
  if (user == chosen) {
    print("Congratulations! You guesses correctly.")
  } else {
    print("Sorry, try again.")
  }
  return(user == chosen)
}

# Play the marble game!
game <- MarbleGame(marbles)

# Bonus: Play the marble game until you win, keeping track of how many tries you take
KeepPlaying <- function(samp) {
  tries <- 0
  stop <- FALSE
  while(stop == FALSE) {
    tries <- tries + 1
    current.game <- MarbleGame(marbles)
    if (current.game == TRUE) {
      stop <- TRUE
    }
  }
  return(tries)
}

game.keepplaying <- KeepPlaying(marbles)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
AvgTries <- function(samp) {
  games <- 1
  totalTries <- 0
  while (games <= 1000) {
    totalTries <- totalTries + KeepPlaying(marbles)
    games <- games + 1
  }
  average <- totalTries/1000
  return(average)
}

run <- AvgTries(marbles)

# Yes, an average of around 6 tries is what I expected. More specifically, the average is always around 5.7 to 6.3.