ary = [  "first", 2, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

#---Hashes
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

#---Ranges
(5..12).each do |n|
   print n, '; '
end