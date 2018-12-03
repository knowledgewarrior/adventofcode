arr = ["0", "1", "2", "3"]
puts arr.select.each_with_index { |_, i| i.odd? }
puts arr.select.each_with_index { |_, i| i.even? }