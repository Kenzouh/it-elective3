# Lesson 3 Topics:

1. Data Cleaning: removing null values and preprocessing the dataset.
2. Messy Data: a dataset with null values and inconsistent formatting.
3. Column Extraction: extracting specific columns.
4. Global Regular Expression: finding the placement of specific numerical values, sometimes even replacing them.
5. Column Concatenation: combining data from multiple columns into a single column.
6. Sum Gross Revenue: getting the sum gross revenue.

---

# Functions Used:

- **data.frame()** = creates data frames.
- **substr()** = extracts/replaces substrings.
- **list()** = crates a list.
- **unlist()** = simplify a list structure by converting it into a single atomic vector. It flattens a list.
- **gregexpr()** = finds all occurrences of a given pattern within a string. It returns a list where each element corresponds to an element in the input text vector.
- **sub()** = replaces the first string instance in a vector or a data frame with the input or the specified string.
- **gsub()** = replaces all of the string instances in a vector or a data frame with the input or the specified string.
- **match()** = is used for value matching between two objects
month.abb: not really a function. = converts int to months ("Jan", "Feb", "Mar", etc.)
- **as.numeric()** = converts object into a numeric type.