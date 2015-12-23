#!/usr/bin/env ruby

#adventofcode.com/day/3

# Santa is delivering presents to an infinite two-dimensional grid of houses.

# He begins by delivering a present to the house at his starting location, and then an elf at the North Pole calls him via radio and tells him where to move next. Moves are always exactly one house to the north (^), south (v), east (>), or west (<). After each move, he delivers another present to the house at his new location.

# However, the elf back at the north pole has had a little too much eggnog, and so his directions are a little off, and Santa ends up visiting some houses more than once. How many houses receive at least one present?

# For example:

# > delivers presents to 2 houses: one at the starting location, and one to the east.
# ^>v< delivers presents to 4 houses in a square, including twice to the house at his starting/ending location.
# ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses.
# Your puzzle answer was 2081.

# The first half of this puzzle is complete! It provides one gold star: *

# part 1

x = 0
y = 0
houses = ["x0y0"]
luckyhouses = Hash.new 0

infile = File.open("input.txt", "rb")

santadata = infile.read.delete!("\n")
santadata.each_char do |char|
  if char == "^"
  	y += 1
  elsif char == ">"
  	x += 1
  elsif char == "v"
  	y -= 1
  elsif char == "<"
  	x -= 1
  end
  houses.push("x#{x}y#{y}")
end

houses.each do |house|
  luckyhouses[house] += 1
end

  puts luckyhouses.count



