library(testthat)

set.seed(1)
# generate some fake normally distributed data
x <- rnorm(50, mean = 0, sd = 1)
y <- 0

context("ttest")
describe("one_sample_ttest()", {
  it("can calculate t test", {
    expect_equivalent(one_sample_ttest(x,y),t.test(x,mu=y)$statistic)
  })
})
