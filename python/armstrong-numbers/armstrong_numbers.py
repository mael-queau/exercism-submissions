def is_armstrong_number(number):
    str = f'{number}'
    length = str.__len__()
    digits = []
    for i in range(0, length):
        digits.append(int(str[i]))
    sum = 0
    for n in digits:
        sum += n ** length
    return sum == number
