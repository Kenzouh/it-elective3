# 1. Create a named vector that represents the number of remaining cards: 
#    "hearts" = 10, "diamonds" = 8, "spades" = 12, "clubs" = 5.

remaining_cards <- c(hearts = 10, diamonds = 8, spades = 12, clubs = 5)

cat("Remaining Cards: ")
remaining_cards

# 2. Check if "diamonds" is one of the names in your vector.
"diamonds" %in% names(remaining_cards)

# 3. Create a vector that combines "diamonds" repeated 2 times and "hearts" repeated 3 times.
diamonds_hearts <- c("diamonds", "diamonds", "hearts", "hearts", "hearts")
diamonds_hearts


# 4. Write a line of code to generate the sequence: 5, 10, 15, ..., 50.
seq(from = 5, to = 50, by = 5)

# 5. Use the sequence() function to generate: 1, 2, 3, 1, 2, 3, 4.
sequence(3:4)