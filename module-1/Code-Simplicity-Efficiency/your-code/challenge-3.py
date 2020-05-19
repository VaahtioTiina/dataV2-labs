"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""

def user_input():
    inputs = 0
    while inputs <= 5:
        inputs = int(input("What is the maximal length of the triangle side? Enter a number: "))
        if inputs <= 5:
            print("Please enter a number greatar than 5")
    return inputs


def my_function():
    x = user_input()
    solutions = [x for x in range(5,x) for y in range(4, x) for z in range(3,x) if x*x==y*y+z*z ]
    m = max(solutions)
    return m


print("The longest side possible is ", my_function())
