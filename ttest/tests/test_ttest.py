from ttest.ttest import one_sample_ttest
from scipy import stats
import random


def test_one_sample_ttest():
    random.seed(1)
    x = [random.gauss(0, 1) for x in range(50)]
    y = 2
    reference = stats.ttest_1samp(x, y)
    assert abs(reference.statistic - one_sample_ttest(x, y)) < 0.001
