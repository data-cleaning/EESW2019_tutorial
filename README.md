# EESW2019_tutorial

Materials for the short course on Statistical Data Cleaning for Business
Statistics at the 
[European Establishment Statistics Workshop 2019](https://statswiki.unece.org/display/ENBES/EESW19)


### Contents 

Slot 1 

|Topic                 | time   |
|----------------------|--------|
|Introduction          | 10     |
|Reading dirty data    | 25     |
|Approximate matching  | 25     |
|Data validation       | 30     |


Slot 2 


|Topic                 | time   |
|----------------------|--------|
| Error localization   | 20     |
| Imputation           | 25     |
| Adjusting            | 20     |
| Monitoring           | 20     |
| Wrap-up              | 5      |


### Prerequisites

Participants are expected to have a basic knowledge of R/RStudio, explicitly:

- Work with the R command line and R scripts
- Read/write CSV data
- Some basic data manipulations and plots
- I highly recommend working with RStudio projects.

### Software needed for the course

1. R See [https://r-project.org](https://r-project.org)
2. (Recommended) [Rstudio](https://rstudio.com)

Execute the following R code to install the necessary packages.

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





