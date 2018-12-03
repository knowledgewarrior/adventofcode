#!/usr/bin/env ruby

#adventofcode.com/day/1

#part 1

infile = File.open("input.txt", "rb")

santadata = infile.read.delete!("\n")

upfloors = santadata.count('(')
downfloors = santadata.count(')')
puts santafloor = upfloors.to_i - downfloors.to_i

#part 2

fl = 0
pos = 0

santadata.each_char do |char|
  if char == "("
  	fl += 1
  elsif char == ")"
  	fl -= 1
  end
  pos +=1
  if fl == -1
  puts "floor = #{fl}, char = #{char}, pos = #{pos}"
	end
end



