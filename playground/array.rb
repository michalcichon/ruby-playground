a = [1, 'cat', 3.14]
puts "First element: #{a[0]}"
a[1] = nil
puts "Array: #{a}"
puts "Array inspect: #{a.inspect}"

h = {
  'name' => 'Michal',
  'surname' => 'Cichon',
  'age' => 27
}

puts "h.name: #{h['name']}"
puts "h: #{h}"

h2 = Hash.new(0)
puts h2
puts h2['not_defined']
# h2['a']++
h2['a'] += 1
puts h2['a']

h3 = {
  :symbol1 => 'value1',
  :symbol2 => 'value2'
}

h3_short = {
  symbol1: 'value1',
  symbol2: 'value2'
}

puts 'h3[:symbol1]: #{h3[:symbol1]}'
puts 'h3_short[:symbol1]: #{h3_short[:symbol1]}'
