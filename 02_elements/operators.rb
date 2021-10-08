a = 1
puts ++a #Do nothing a++ syntax error
puts a

b = 10
b +=a
puts b

puts 2**4 #power

puts "---Comparison operators"
# Returns 0 if first operand equals second, 1 if first operand is greater than the second
# and -1 if first operand is less than the second.
puts a<=>b
puts b<=>a
puts a<=>a

x = "afa"
y = "afa1"
puts x<=>y
puts y<=>x
puts x<=>x

#--- In operator? (not clear now)
puts (1...10) === 5 # analog of Kotlin's operator in?
puts (1...10) === 11

puts "---Equal operators"
puts x == a
puts 2 == 2.0 #Value equal

puts 2.eql? 2.0 #True if the receiver and argument have both the same type and equal values.

a = 2
puts 2.eql? a

y = "af" + "a"
puts x.equal? y #True if the receiver and argument have the same object id.

# but it's not work by simple values
b = 2
puts b.equal? a

c = b + 0
puts b.equal? c

d = 1.21
e = 1.21

puts d.equal? e

puts "--- Assignments"
a, b, c = 100, "B", 2.1

puts a
puts b
puts c

puts "---Logical Operators"

a = true
b = false
c = nil
d = true

puts (a and b)
puts (a and c) #no result
puts (a and d)

puts (a && b)
puts (a && c) #no result
puts (a && d)

puts (a or b)
puts (a or c) #result true
puts (a or d)

puts (a || b)
puts (a ||  c) #result true
puts (a || d)

puts !a
puts !b

puts not(a)
puts not(b)

puts "---Ternary Operator"

a = 2
b = (a > 1)? 100 : 200
puts b

puts "---Range Operators"

r1 = 1..3 #Creates a range from start point to end point inclusive.
r2 = 1...3 #Creates a range from start point to end point exclusive.
puts r1.each {|el| print el, ',' }
puts r2.each {|el| print el, ',' }

puts "---defined? Operators"
puts defined? a    # => "local-variable"
puts defined? $_   # => "global-variable"
puts defined? netuti  # no result


class User
   @@no_of_users = 0 #class variable starts with @@


   # The initialize method is a special type of method,
   # which will be executed when the new method of the class is called with parameters.
   def initialize(name, addr)
      @user_id = @@no_of_users += 1 #Instance Variables starts with @
      @user_name = name
      @user_addr = addr
   end
   def display_details()
      puts "User id #@user_id"
      puts "User name #@user_name"
      puts "User address #@user_addr"
   end

   ::ONE = "One"
end

cust1 = User.new("John Travolta", "Spring Apartments, Pennsylvania, USA")
puts defined? cust1.display_details

puts "---Double Colon '::' Operator"
ONE = 1

puts ONE
puts User::ONE #Not works as expected





