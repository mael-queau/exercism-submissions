"""Functions used in preparing Guido's gorgeous lasagna.

Learn about Guido, the creator of the Python language: https://en.wikipedia.org/wiki/Guido_van_Rossum
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2


def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    return EXPECTED_BAKE_TIME - elapsed_bake_time


def preparation_time_in_minutes(number_of_layers):
    """Calculate the preparation time of the layers.

    :param number_of_layers: int - number of layers you wish to make
    :return: int - time it would take to make them

    Function that takes an amount of layers of lasagna, and returns the time required to prepare them.
    """
    return PREPARATION_TIME * number_of_layers


def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """Calculate the actual elapsed time.

    :param number_of_layers: int - the amount of layers in the lasagna
    :param elapsed_bake_time: int - the amount of time for which the lasagna has already been baking
    :return: int - time that's already been spend on the lasagna

    Function that takes an amount of layers of lasagna and the time it's already been baking for, and returns the total elapsed preparation time for the lasagna.
    """
    return elapsed_bake_time + (number_of_layers * PREPARATION_TIME)
