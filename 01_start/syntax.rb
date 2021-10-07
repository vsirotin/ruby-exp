#---Whitespace
a = 1
b = 2
puts a + b

puts a +b

#---Line Endings
# if Ruby encounters operators, such as +, −, or backslash at the end of a line, they indicate the continuation of a statement
c = a +
b + 1
puts c

d = a\
+ b + 2
puts d

#---Multiline comments
=begin
This is a comment.
This is a comment, too.
This is a comment, too.
I said that already.
=end