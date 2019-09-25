# EESW2019
## Data validation ----

# let's read in the matched data.
companies <- read.csv("02input/input.csv")
head(companies)

# try the following code

# load the library
library(validate)

# define some restrictions on data
rules <- validator(
  staff >= 0
  , turnover >= 0
  , other.rev >= 0
  , turnover + other.rev == total.rev
  , if (staff > 0) staff.costs >= 0
)

# confront data with the rules
result <- confront(companies, rules, key="id")

# print the result
result

# Summarize the result and study the output
summary(result)
# Discuss each column with your neighbour

# plot the result
plot(result)
# Explain what you see

# add a new rule
rules <- rules + validator(V6 = total.costs>=0)
rules

# Study the variables staff ... vat. Add at least three more rules, then:
## 1. Summarize and plot the results. Interpret the results.

rules <- rules + validator(
  V7 = vat >= 0
  , V8 = turnover - total.costs == profit
  , V9 = staff.costs  <= total.costs
)

result <- confront(companies, rules, key="id")
summary(result)
plot(result)


## 2. Use `as.data.frame` to turn results into a data frame and
## View the results.

d <- as.data.frame(result)
View(result)

## Assignment (on slide, after presentation)

## Assignemt 1
rls <- validator(
  profit <= 0.6*turnover
  , turnover - total.costs == profit
  , cor(total.costs, staff, use="pairwise.complete") >= 0.5
  , grepl("^[1-9][0-9]{3}[A-Z]{2}", zipcode)
)

out <- confront(companies, rls)
summary(out)

## Assignment 2
rules <- validator(.file="03valid/rules.R")
out <- confront(companies, rules)
summary(out)











