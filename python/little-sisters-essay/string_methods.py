"""Functions to help edit essay homework using string manipulation."""


import re


def capitalize_title(title: str):
    """Convert the first letter of each word in the title to uppercase if needed.

    :param title: str - title string that needs title casing.
    :return: str - title string in title case (first letters capitalized).
    """

    return ' '.join(map(lambda w: w.capitalize(), title.split(' ')))


def check_sentence_ending(sentence: str):
    """Check the ending of the sentence to verify that a period is present.

    :param sentence: str - a sentence to check.
    :return: bool - return True if punctuated correctly with period, False otherwise.
    """

    return sentence.endswith('.')


def clean_up_spacing(sentence: str):
    """Verify that there isn't any whitespace at the start and end of the sentence.

    :param sentence: str - a sentence to clean of leading and trailing space characters.
    :return: str - a sentence that has been cleaned of leading and trailing space characters.
    """

    leading_whitespaces = r'^\s*'
    trailing_whitespaces = r'\s*$'
    sentence = re.sub(leading_whitespaces, '', sentence)
    sentence = re.sub(trailing_whitespaces, '', sentence)
    return sentence


def replace_word_choice(sentence: str, old_word, new_word):
    """Replace a word in the provided sentence with a new one.

    :param sentence: str - a sentence to replace words in.
    :param old_word: str - word to replace.
    :param new_word: str - replacement word.
    :return: str - input sentence with new words in place of old words.
    """

    return sentence.replace(old_word, new_word)
