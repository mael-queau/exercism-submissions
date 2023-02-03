import math


RADII = [(1, 10), (5, 5), (10, 1)]


def score(x, y):
    for rad in RADII:
        if math.hypot(x, y) <= rad[0]:
            return rad[1]
    return 0
