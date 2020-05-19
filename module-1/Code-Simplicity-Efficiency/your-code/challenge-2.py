"""
The code below generates a given number of random strings that consists of numbers and
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random
import string
import sys
import string

def random_string_generator(length=12):
    letters = list(string.ascii_lowercase) + list(string.digits)
    word = random.choice(letters)
    while len(word) < length:
        word += (random.choice(letters))
    return word


def batch_string_generator(n, a=8, b=12):
    r = []
    for i in range(n):
        c = None
        if a < b:
            c = random.choice(range(a, b))
        elif a == b:
            c = a
        else:
            sys.exit('Incorrect min and max string lengths. Try again.')
        r.append(random_string_generator(c))
    return r

a = input('Enter minimum string length: ')
b = input('Enter maximum string length: ')
n = input('How many random strings to generate? ')

print(batch_string_generator(int(n), int(a), int(b)))
