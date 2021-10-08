puts "---if...else Statement"

x = 0.1
if x > 2
   puts "x > 2"
elsif x <= 2 and x>0
   puts "0<x<=2"
else
   puts "x < 0"
end

y = 2
puts "y is set" if y

z = 0
(z = 1) if y
puts z

y = nil
(z = 2) if y
puts z

puts "---unless Statement"
x = 1
unless x<=0
   puts "x > 0"
 else
   puts "x less or equal then 0"
end

puts "---case statement"

age =  14
case age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end