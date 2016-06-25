
def one_sample_ttest(x, y):
    """one sample t test
    x = list
    y = single value
    return = t_value as float"""
    mean_x = sum(x)/float(len(x))
    variance_x = sum(([(i - mean_x)**2 for i in x]))/float(len(x) - 1)
    t_value = (mean_x - y) / float((variance_x**(0.5)/ len(x)**(0.5)))
    return t_value
