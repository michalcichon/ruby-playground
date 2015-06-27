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
