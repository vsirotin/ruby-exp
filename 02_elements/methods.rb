puts("---Default parameters")
def f(p1 = 1, p2 = "two")
    puts "p1 = #{p1} p2 = #{p2}"
end

f
f 21
f 21, 23

puts("---Return")
def f1
    a =1
    b = 221
end

c = f1
puts c

def f2
    return 1, 11, 111
end

d = f2
puts d

puts("---Variable Number of Parameters")

def f3(*args)
    for i in 0...args.length
        puts "args[#{i}]=#{args[i]}"
    end
end

f3 1, 2, 3

f3 1, "two", 3.33

puts("---Alias")

alias f4 f3

f4 1, 2

puts("---undef")

undef f4

f4 12 #no result, no warning



