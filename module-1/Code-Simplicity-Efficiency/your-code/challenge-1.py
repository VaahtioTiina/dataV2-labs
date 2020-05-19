"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.
"""

import num2words as n2w
import words2num as w2n

def ask_input():
    a = input('Please choose your first number (zero to five): ')
    b = input('What do you want to do? plus or minus: ')
    c = input('Please choose your second number (zero to five): ')
    return a, b, c

def user_input():
    inputs = ask_input()
    numbers = ['zero', 'one', 'two', 'three', 'four', 'five']
    ops = ['plus', 'minus']
    if (inputs[0] not in numbers) or (inputs[2] not in numbers) or (inputs[1] not in ops):
        print("I am not able to answer this question. Check your input.")
        inputs = ask_input()
    return inputs

def translate_words():
    words = user_input()
    a = w2n.words2num(words[0])
    c = w2n.words2num(words[2])
    if words[1] == 'plus':
        result = a + c
    else:
        result = a - c

    return (f'{n2w.num2words(a)} {words[1]} {n2w.num2words(c)} equals {n2w.num2words(result)}')

# Calculator

print('Welcome to this calculator!')
print('It can add and subttract whole numbers from zero to five')

print(translate_words())

print("Thanks for using this calculator, goodbye :)")
