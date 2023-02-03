"""Is this sentence a pangram?
"""


def is_pangram(sentence: str):
    for letter in range(ord('a'), ord('z') + 1):
        if sentence.lower().find(chr(letter)) == -1:
            return False
    return True
