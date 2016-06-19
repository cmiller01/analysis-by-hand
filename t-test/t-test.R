# t-tests

# one sample: sample mean vs known value, null hypothesis means are equal
one_sample_t_test <- function(x,y) {
  mean_x <- sum(x)/length(x)
  variance_x <- sum((x - mean_x)^2)/(length(x)-1)
  t_value <- (mean_x - y) / (sqrt(variance_x) / sqrt(length(x)))
  t_value
}

