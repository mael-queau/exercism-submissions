import re


def response(hey_bob: str):
    no_whitespaces = re.sub(r'\s', '', hey_bob)
    if len(no_whitespaces) == 0:
        print(len(no_whitespaces))
        return 'Fine. Be that way!'
    question = no_whitespaces.endswith('?')
    chars_only = re.sub(r'[\W\d]', '', hey_bob)
    shouting = re.fullmatch(r'[A-Z]+', chars_only)
    if question and shouting:
        return 'Calm down, I know what I\'m doing!'
    if question:
        return 'Sure.'
    if shouting:
        return "Whoa, chill out!"
    return "Whatever."
