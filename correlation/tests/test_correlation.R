library(testthat)

set.seed(1)
# generate some fake normally distributed data
x <- rnorm(50, mean = 0, sd = 1)
y <- rnorm(50, mean = 0, sd = 1)

context("correlation")

describe("mmean()", {
  it("can calculate a mean", {
    expect_equivalent(mmean(x),mean(x))
  })
})

describe("sample_covariance()", {
  it("can calculate the sample covariance", {
    expect_equivalent(sample_covariance(x,y),cov(x,y))
  })
})

describe("variance()", {
  it("can calculate the variance", {
    expect_equivalent(variance(x),var(x))
  })
})

describe("standard_deviation()", {
  it("can calulate the standard deviation", {
    expect_equivalent(standard_deviation(x),sd(x))
  })
})

describe("pearson_correlation_coefficient()", {
  it("can calculate the pearson correlation coefficient", {
    expect_equivalent(pearson_correlation_coefficient(x,y),cor(x,y,method = "pearson"))
  })
})