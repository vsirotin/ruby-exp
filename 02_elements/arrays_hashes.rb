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

a = [1,2,3,4,5]
b = a.collect{|x| x**3}
puts b

puts "---Hashes"
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

v = colors["red"]
puts v

h1 = Hash.new
h1[5] = "five"
h1[1] = "one"
puts h1.keys
puts h1.values
v1 = h1.fetch(5){|key|  "Value is #{h1[key]}"} # no clear why don't work
puts v1

v2 = h1.fetch(7, "Not exist")
puts v2

puts "---Ranges"
(5..12).each do |n|
   print n, '; '
end

score = 70

result = case score
   when 0..40 then "Bad"
   when 41..60 then "Pass"
   when 61..70 then "Good"
   when 71..100 then "Perfect"
   else "Invalid Score"
end

puts result