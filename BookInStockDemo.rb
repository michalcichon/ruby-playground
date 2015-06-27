require_relative 'BookInStock'

a = BookInStock.new("ISBN123321456", 2.5)
b = BookInStock.new("ISBN123432152", 3.5)
c = BookInStock.new("ISBN6767832321", "4.5")

puts a , b, c
