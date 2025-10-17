# Lesson 4 Topics:

1. **Measures of Central Tendency**: often called averages. The most common measures of central tendency are the arithmetic mean, the median, and the mode.
2. **Measure of Spread (Measures of Dispersion)**: quantify how spread out or varied the data points in a dataset are
3. **Percentile & Quartiles**: measures used to divide a data set.
  3.1 **Percentile**: divide data into 100 equal parts.
  3.2 **Quartile**: specific type of percentile that divide the data into four equal parts: the first quartile (Q1) is the 25th percentile, the second quartile (Q2) is the 50th percentile (the median), and the third quartile (Q3) is the 75th percentile.
4. **matrixStats**: Functions that Apply to Rows and Columns of Matrices (and to Vectors).
5. **Skewness, Kurtosis and Histogram**: A histogram visualizes data distribution, while skewness and kurtosis are numerical measures that describe its shape.
6. **Histogram**: a diagram consisting of rectangles whose area is proportional to the frequency of a variable and whose width is equal to the class interval.
7. **Plots**: a graphical technique for representing a data set, usually as a graph showing the relationship between two or more variables.
8. **Graphs**: a diagram showing the relation between variable quantities, typically of two variables, each measured along one of a pair of axes at right angles.

---

# Functions Used:

- **mean()** = for calculating the average value.
- **median()** = for checking the middle value in a sorted dataset.
- **names()** = sets the names of an object.
- **which()** = return the indices of elements in a logical vector to evaluate to TRUE.
- **table()** = returns a contingency table.
- **min()** = gets the lowest value in a set.
- **max()** = gets the highest value in a set.
- **var()** = for calculating the sample variance of a numeric vector.
- **sd()** = for calculating the standard deviation.
- **quantile()** = returns estimates of underlying distribution quantiles based on one or two order statistics from the supplied elements in x at probabilities in probs.
- **IQR()** = It is a measure of how far apart the middle portion of data spreads in value.
- **as.matrix()** = Converts a data.table into a matrix
- **colMins()** = gets the lowest value in a column.
- **colMaxs()** = gets the highest value in a column.
- **skew()** = for calculating the skewness of a distribution. Found in psych package.
- **skewness()** = for calculating the skewness of a distribution. Found in moments package.
- **kurtosis()** = measures a distribution's tailedness, not its peakedness, compared to a normal distribution.
- **qplot()** = it is a function that is present in the ggplot2 package. The Qplot is an acronym for Quick Plot as the name suggests this was introduced to quickly plot any type of graph without much relying on and remembering the specified functions of each of them.
- **xlab()** = is a function used in the ggplot2 package to set or modify the label of the x-axis in a plot.
- **summary()** = is a generic function to produce result summaries of R objects, such as vectors, data frames, and model fitting results.
- **describe()** = used for generating descriptive statistics for variables in a dataset. Found in the psych package.