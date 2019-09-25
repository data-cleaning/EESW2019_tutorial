# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# EESW2019


## Approximate matching ----
# Task: merge our 'companies' data with data from the backbone.

# Assignment 1: playing around with 'stringdist'.
library(stringdist)

# 1.a Try these commands and interpret their results. Can you guess
# how the difference between strings is measured? Discuss with your neighbour.
stringdist("hihi", "hihihi")
stringdist("hihi", "haha")
stringdist("hihi", "ihhi")
stringdist("hello", "Hello")

# the distance is measured by finding the smallest number of 
# character substitutions, insertions, deletions, and transpositions
# to turn one string into another.


# 1.b compute the stringdistance between your name and your neighbours name.

stringdist("your name","your neighbours name")

# 1.c compute the stringdist between your own "firstname lastname" and
#     "lastname, firstname".
stringdist("firstname lastname", "lastname, firstname")

# Assignment 2. Matching data on exact keys, using 'match'
# (this can be done easier with 'merge' but we need this method for the 
# final assignment)

# first read in the data
companies <- read.csv("data/companies.csv",stringsAsFactors = FALSE) 
backbone  <- read.csv("data/backbone.csv", stringsAsFactors = FALSE)


# i: for each element of 'companies$name' give the index in backbone$company
# with the same value.
i <- match(companies$name, backbone$company)
test <- cbind(backbone[i,,drop=FALSE], companies)
View(test)

# or, to view only the match quality:
d <- data.frame(dirty = companies$name, matched = backbone$company[i])
View(d)


## Assignment 3: SEE SLIDE

j <- amatch(companies$name, backbone$company
            , maxDist=2)

k <- amatch(companies$name, backbone$company
            , maxDist=3)

l <- amatch(companies$name, backbone$company
            , method="cosine", q=2 , maxDist=0.2)

m <- amatch(companies$name, backbone$company
            , method="cosine", q=3, maxDist=0.2)

n <- amatch(companies$name, backbone$company
            , method="cosine", q=2, maxDist=0.5)

d <- data.frame(dirty = companies$name
                , matched = backbone$company[i]
                , osa2    = backbone$company[j]
                , osa3    = backbone$company[k]
                , cos2.2  = backbone$company[l]
                , cos3.2  = backbone$company[m]
                , cos2.5  = backbone$company[n])

View(d)


# at the end write your result to '02input/my_input.csv'
write.csv(input, "02input/my_input.csv", row.names=FALSE)



