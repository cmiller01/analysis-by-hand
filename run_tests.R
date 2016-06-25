#!/usr/local/bin/Rscript
library(testthat)

source('ttest/ttest.R')
source('correlation/correlation.R')

message("Running python tests")
system2('nosetests')

message("Running R tests")
test_dir('ttest/tests')
test_dir('correlation/tests')

