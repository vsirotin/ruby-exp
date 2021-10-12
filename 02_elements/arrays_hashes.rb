puts "---Arrays"
arr = Array.new(20)
puts arr.size
puts arr.length

names = Array.new(4, "Joe")
puts "#{names}"

nums = Array.new(10) { |e| e = e ** 2 }
puts "#{nums}"

ary = [  "first", 2, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

digits = Array(0..9)
puts "#{digits}"

puts "---Array Built-in Methods"

num = digits.at(3)
puts "#{num}"

digits1 = Array(5..8)


digits2 = digits & digits1
print digits2, "\n"

digits3 = digits + digits1
print digits3, "\n"

digits4 = digits - digits1
print digits4, "\n"

a2 = digits1.map{|x| x**2}
print a2, "\n"

a3 = digits1.concat(a2)
print a3, "\n"

a2.each_index{|i| puts "#{i}-->#{a2[i]}"}

puts "---Hashes"
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

puts "---Ranges"
(5..12).each do |n|
   print n, '; '
end