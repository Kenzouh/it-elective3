# Problem 1: data.frame() + substr()
# A zoo keeps a list of its animal residents. Each entry records the full name of the animal species. 
# You’re asked to extract a short code for each animal, which is the first 3 letters of its species name.

zoo_data <- data.frame(animals = c("Elephant", "Giraffe", "Kangaroo", "Crocodile", "Zebra"))
zoo_data

zoo_data$animal_codes <- substr(zoo_data$animals, 1,3)
zoo_data

# Problem 2: list() + unlist()
# The zoo recorded the number of daily visitors for 5 days in a nested list structure like this:


daily_visitors <- list(mon = list(count = 120),
                       tue = list(count = 135),
                       wed = list(count = 98),
                       thu = list(count = 150),
                       fri = list(count = 160)
                       )
daily_visitors

unlist(daily_visitors)

# Problem 3: gregexpr()
# A zookeeper is reviewing the zoo's newsletter messages. 
# They want to identify where the word "zebra" appears (case-sensitive) 
# in the following character vector:

zoo_messages <- c("The zebra is in the savannah area.",
                  "Feeding time for the lions is at noon.",
                  "Zebra behavior changes with the weather.",
                  "New baby zebra was born yesterday.")

gregexpr("zebra", zoo_messages)

# Problem 4: sub() and gsub()
# Use sub() to replace only the first occurrence of "tiger" with "leopard".
# Use gsub() to replace all occurrences of "tiger" with "leopard".

zoo_warning_message <- "A tiger tiger tiger escaped from the tiger enclosure."

sub("tiger", "leopard", zoo_warning_message)
gsub("tiger", "leopard", zoo_warning_message)

# Problem 5: match()

rare_animals <- c("Okapi", "Axolotl", "Pangolin", "Aye-Aye", "Saola", "Narwhal")
transfer_list <- c("Saola", "Narwhal", "Tiger")

match(transfer_list, rare_animals)

# Problem 6: month.abb

zoo_data
birth_months <- c(1, 3, 5, 7, 9)

zoo_data$birth_months <- birth_months
zoo_data

zoo_data$birth_months <- month.abb[birth_months]
zoo_data