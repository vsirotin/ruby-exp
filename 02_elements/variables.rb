#---String
puts "Sztings are UTF-8: будем лечить вашу память!"

puts 'escape using "\\"'
puts 'Viktor\'s code'

# Interpolation/evaluation
puts "Number seconds in year : #{365*24*60*60}"

x = 124
puts "x=#{x}"

#--- Types
i = 123                  # Fixnum decimal
d = 1_234                # Fixnum decimal with underline
ineg = -500                 # Negative Fixnum
oct = 0377                 # octal
h = 0xff                 # hexadecimal
b = 0b1011               # binary
ca = ?a                   # character code for 'a'
cn = ?\n                  # code for a newline (0x0a)
bn = 12345678901234567890 # Bignum

puts i + d
puts i + d + ineg
puts i + d + ineg + oct
puts i + d + ineg + oct + h
puts i + bn
puts 0b1
puts 0b1 + 0b0
puts 0b1 + 0b1
puts b + 0b1

puts "Character a:" + ca
puts "Expected " + cn + "new line"

#--- Floating Numbers
x1 = 123.4                # floating point value
x2 = 5.0e6                # scientific notation
x3 = 9e+21                # sign before exponential
x4 = 51e3
puts x1 + x2 + x3
puts x1 + x2 + x4
