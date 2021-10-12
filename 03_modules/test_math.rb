$LOAD_PATH << '.'

require 'math1.rb'
require 'math2.rb'

x1 = Math1.plus 1,2
puts x1

x2 = Math2.plus 1,2
puts x2

puts "---Include"

class Math3
include Math1
    def plus_ex(x, y)
        Math1::plus(x,y) + 10
    end
end

m3 = Math3.new
x3 = m3.plus_ex 1, 2
puts x3

puts "---Mixins"

class Math4
include Math1
include Math2
    def m4f
        puts "m4f works"
    end
end

m4 = Math4.new
m4.m1f # Ruby's type of inheritance names mixin
m4.m2f
m4.m4f