This repository includes 4 lessons about my R Programming Language Summer Class.

# Lesson 1

Lesson 1 is about the introduction of R Programming Language. In this lesson, we created vectors, understanding data structure, creating sequences, concatenating strings, creating lists, matrices, data frames, subsetting and creating arrays.

## Functions Used:

c() = for creating vectors.
cat() = for concatenating.
is.vector() = checks if an object is a vector.
names() = sets the names of an object.
str() = checks the structure of an object.
sequence() = creates sequences.
seq() = creates sequences with more modifications (from, to, by)
rep() = repeats elements.
list() = creates a list.
length() = checks the length of an object.
is.list() = checks if an object is a list.
matrix() = creates a matrix.
rbind() = joins multiple rows in a single batch.
cbind() = joins multiple columns in a single batch.
data.frame() = creates data frames.
rm() = removes an object in R.
array() = creates an array.

## Operator Used:
Colon Operator (:)

# Lesson 2

Lesson 2 is about importing a .csv file, understanding the dataset, and data manipulation. In here, we get the sum, display specific values, subsetted, and omit NAs.

## Functions Used:

head()
tail()
library()
filter()
subset()
order()
is.na()
na.omit()
View()
any()
mutate()
class()
typeof()
sum()

# Lesson 3

Lesson 3 is about cleaning messy data with column extraction, global regular expression, column concatenation and getting the sum.

## Functions Used:

data.frame()
substr()
list()
unlist()
gregexpr()
sub()
gsub()
match()
month.abb: not really a function.
as.numeric()

# Lesson 4

Lesson 4 is about Descriptive Statistics, specifically finding the Measures of Central Tendency, Measures of Spread, Percentiles & Quartiles, Matrix Stats, Skewness and Creating Plots.

## Functions Used:

mean()
median()
names()
which()
table()
min()
max()
var()
sd()
quantile()
IQR()
as.matrix()
colMins()
colMaxs()
skew()
skewness()
kurtosis()
qplot()
xlab()
summary()
describe()