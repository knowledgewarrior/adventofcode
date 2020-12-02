#!/usr/bin/env python3

"""
The Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.

For example, suppose your expense report contained the following:

1721
979
366
299
675
1456
In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?
"""

import sys
import os

def main():

  results = []

  with open('input.txt') as my_file:
    num_list = my_file.readlines()
    for item in nonblank_lines(num_list):
        for inner_item in nonblank_lines(num_list):
            added = addtwo(item,inner_item)
            if (added == 2020):
                print(int(item) * int(inner_item))

def nonblank_lines(f):
    for l in f:
        line = l.rstrip()
        if line:
            yield line

def addtwo(x,y):
    result = int(x) + int(y)
    return result

if __name__ == '__main__':
   main()
