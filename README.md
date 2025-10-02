This repository includes 4 lessons about my R Programming Language Summer Class.

# Lesson 1

Lesson 1 is about the introduction of R Programming Language. In this lesson, we created vectors, understanding data structure, creating sequences, concatenating strings, creating lists, matrices, data frames, subsetting and creating arrays.

## Functions Used:

- **c()** = for creating vectors.
- **cat()** = for concatenating.
- **is.vector()** = checks if an object is a vector.
- **names()** = sets the names of an object.
- **str()** = checks the structure of an object.
- **sequence()** = creates sequences.
- **seq()** = creates sequences with more modifications (from, to, by)
- **rep()** = repeats elements.
- **list()** = creates a list.
- **length()** = checks the length of an object.
- **is.list()** = checks if an object is a list.
- **matrix()** = creates a matrix.
- **rbind()** = joins multiple rows in a single batch.
- **cbind()** = joins multiple columns in a single batch.
- **data.frame()** = creates data frames.
- **rm()** = removes an object in R.
- **array()** = creates an array.

## Operator Used:
- **Colon Operator (:)**

# Lesson 2

Lesson 2 is about importing a .csv file, understanding the dataset, and data manipulation. In here, we get the sum, display specific values, subsetted, and omit NAs.

## Functions Used:

- head() = for seeing the first 6 rows.
- tail() = for seeing the last 6 rows.
- library() = for loading installed packages in R.
- filter() = finds rows/columns where conditions are true.
- subset() = for creating subsets (selecting specific rows/columns).
- order() = sorts a vector, data frame, or a list.
- is.na() = checks if there are NAs.
- na.omit() = Removes NAs.
- View() = for viewing the imported .csv.
- any() = checks if there are any elements that possess the conditions stated.
- mutate() = a dplyr package function used for data manipulation.
- class() = checks what is the type of the variable.
- typeof() = returns "double" or "character" or "logical" or "integer" or "complex" or "lists".
- sum() = checks the sum.

# Lesson 3

Lesson 3 is about cleaning messy data with column extraction, global regular expression, column concatenation and getting the sum.

## Functions Used:

- data.frame() = creates data frames.
- substr() = extracts/replaces substrings.
- list() = crates a list.
- unlist() = simplify a list structure by converting it into a single atomic vector. It flattens a list.
- gregexpr() = finds all occurrences of a given pattern within a string. It returns a list where each element corresponds to an element in the input text vector.
- sub() = replaces the first string instance in a vector or a data frame with the input or the specified string.
- gsub() = replaces all of the string instances in a vector or a data frame with the input or the specified string.
- match() = is used for value matching between two objects
month.abb: not really a function. = converts int to months ("Jan", "Feb", "Mar", etc.)
- as.numeric() = converts object into a numeric type.

# Lesson 4

Lesson 4 is about Descriptive Statistics, specifically finding the Measures of Central Tendency, Measures of Spread, Percentiles & Quartiles, Matrix Stats, Skewness and Creating Plots.

## Functions Used:

- mean() = for calculating the average value.
- median() = for checking the middle value in a sorted dataset.
- names() = sets the names of an object.
- which() = return the indices of elements in a logical vector to evaluate to TRUE.
- table() = returns a contingency table.
- min() = gets the lowest value in a set.
- max() = gets the highest value in a set.
- var() = for calculating the sample variance of a numeric vector.
- sd() = for calculating the standard deviation.
- quantile() = returns estimates of underlying distribution quantiles based on one or two order statistics from the supplied elements in x at probabilities in probs.
- IQR() = It is a measure of how far apart the middle portion of data spreads in value.
- as.matrix() = Converts a data.table into a matrix
- colMins() = gets the lowest value in a column.
- colMaxs() = gets the highest value in a column.
- skew() = for calculating the skewness of a distribution. Found in psych package.
- skewness() = for calculating the skewness of a distribution. Found in moments package.
- kurtosis() = measures a distribution's tailedness, not its peakedness, compared to a normal distribution.
- qplot() = it is a function that is present in the ggplot2 package. The Qplot is an acronym for Quick Plot as the name suggests this was introduced to quickly plot any type of graph without much relying on and remembering the specified functions of each of them.
- xlab() = is a function used in the ggplot2 package to set or modify the label of the x-axis in a plot.
- summary() = is a generic function to produce result summaries of R objects, such as vectors, data frames, and model fitting results.
- describe() = used for generating descriptive statistics for variables in a dataset. Found in the psych package.