def b1
    puts "In b1"
end
b1

puts "---yield Statement"
def b2
    puts "Before yield"
    yield
    puts "After yield"
end

b2 {puts "In yield"}

def b3
    puts "Before yield"
    yield 5
    puts "After yield"
end

b3 {|param| puts "In yield with param=#{param}"}

puts("---Functions and blocks")
def f(&block)
    puts "Before call"
    block.call
    puts "After call"
end

f {puts "In block"}

puts "---BEGIN and END"
BEGIN {
   # BEGIN block code will bw present before all outputs
   puts "BEGIN code block"
}

END {
   # END block code wiil be present after all outputs
   puts "END code block"
}
