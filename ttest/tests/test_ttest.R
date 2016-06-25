library(testthat)

set.seed(1)
# generate some fake normally distributed data
x <- rnorm(50, mean = 0, sd = 1)
y <- 0

context("One-sample t-test")
test_that("t test results are equal", {
  expect_equal(one_sample_ttest(x,y),as.vector(t.test(x,mu=y)$statistic))
})
