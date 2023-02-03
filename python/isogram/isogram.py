"""Is this string an isogram?
"""


import re


def is_isogram(string: str):
    for letter in re.sub(r'\W', '', string.lower()):
        if string.lower().count(letter) > 1:
            return False
    return True
