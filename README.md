# Analysis by hand
Not exactly "by hand", but this repo gives implementations of common data analysis methods without the benefit of really nice methods/packages, like `lm` in `R` or `sklearn.cluster.KMeans` in Python.

Everything should be as basic as possible, albeit without reinventing sorting, transposing matricies, etc.

Favoring simplicity over efficiency.

# Requirements
This project is using `R` and `python` as the main engines for analysis; you will need one or both to run the tests.

* R
  * Install R from here: http://cran.org
  * Recommend RStudio too: http://rstudio.com
  * Required packages, install with `install.packages('package_name')` from R console
    * testthat
* R
  * Install Python 3 (if needed)
  * Recommend using `virtualenv` and `virtualenvwrapper`
  * Install package dependencies with `pip install -r requirements.txt`

## Other languages?
Would love to add:
* C++
* Matlab/Octave
* Julia
* Go

Feel free to branch or submit a PR if you want to help!

# Testing
These methods should return same values as the "built-in" methods and that is testable.

To run all the tests for R use:
TODO!!

To run all the test for Python use:
TODO!!

# Methods

## T-test

## Correlation Coefficient

## ANOVA

## Linear Regression

## Principal Component Analysis

## K-means
