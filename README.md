# EESW2019_tutorial
Materials for the short course at the [European Establishment Statistics Workshop 2019](https://statswiki.unece.org/display/ENBES/EESW19)

### Course form

The course form is highly hands-on. Each topic starts with an apprximately 10 minute
session where you run and adapt some R code. Next, I will provide background and
details on what you just did. After that, depending on time there is a more in-depth
assignment.

### Prerequisites

Course participants are expected to have some working knowledge of R. In particular:

- Basic R syntax: vectors, data frames, `plot`, summary statistics.
- Reading/writing (text) files
- RStudio projects
- Basic manipulations of data frames.



### Contents 

Slot 1 

|Topic                 | time (m)  |
|----------------------|-----------|
|Introduction          | 10        |
|Reading dirty data    | 25        |
|Approximate matching  | 25        |
|Data validation       | 30        |


Slot 2 


|Topic                 | time (m)  |
|----------------------|-----------|
| Error localization   | 20        |
| Imputation           | 25        |
| Adjusting            | 20        |
| Monitoring           | 20        |
| Wrap-up              | 5         |


### Install the following packages

```r
install.packages(c(
        "validate"
      , "errorlocate"
      , "simputation"
      , "rspa"
      , "daff"
      , "lumberjack")
  , dependencies=TRUE)
```





