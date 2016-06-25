#!/usr/local/bin/Rscript
library(testthat)

source('ttest/ttest.R')

message("Running python tests")
system2('nosetests')

message("Running R tests")
test_dir('ttest/tests')

