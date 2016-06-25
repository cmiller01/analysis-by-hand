# correlation coefficient

mmean <- function(x) {
  # same as mean(x), but a bit faster due to simplification
  # x = numeric vector
  sum(x)/length(x)
}

sample_covariance <- function(x,y) {
  # sample covariance
  # x = numeric vector
  # y = numeric vector
  sum((x - mmean(x))*(y - mmean(y))) / (length(x) - 1)
}

variance <- function(x) {
  # same as covariance(x,x)
  # x = numeric vector
  sample_covariance(x,x)
}

standard_deviation <- function(x) {
  # standard deviation
  # x = numeric vector
  sqrt(variance(x))
}

pearson_correlation_coefficient <- function(x,y) {
  # x = numeric vector
  # y = numeric vector
  # return = pearson correlation coefficient
  # see https://en.wikipedia.org/wiki/Pearson_product-moment_correlation_coefficient
  # rho = cov(x,y) / (stdev(x)*stdev(y))
  sample_covariance(x,y) / (standard_deviation(x)*standard_deviation(y))
}

