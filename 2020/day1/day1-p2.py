"""
--- Part Two ---
The Elves in accounting are thankful for your help; one of them even offers you a starfish coin they had left over from a past vacation.
They offer you a second one if you can find three numbers in your expense report that meet the same criteria.

Using the above example again, the three entries that sum to 2020 are 979, 366, and 675.
Multiplying them together produces the answer, 241861950.

In your expense report, what is the product of the three entries that sum to 2020?
"""

import sys
import os

def main():
  results = []

  with open('input.txt') as my_file:
    num_list = my_file.readlines()
    for item in nonblank_lines(num_list):
        for inner_item in nonblank_lines(num_list):
            for inner_inner_item in nonblank_lines(num_list):
                addlist = (item,inner_item,inner_inner_item)
                results.append(addlist)
                print(results)
                # if (added == 2020):
                #     print(int(item) * int(inner_item))

def nonblank_lines(f):
    for l in f:
        line = l.rstrip()
        if line:
            yield line

def addthree(x,y,z):
    result = int(x) + int(y) + int(z)
    return result

if __name__ == '__main__':
   main()
