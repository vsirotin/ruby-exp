#STDERR.puts "I am an error message"

begin
   puts "Before raise"
   raise 'Custom exception.'
   puts "After raise"
rescue Exception => e
   puts "In rescue block"
   puts e.message
   puts e.backtrace.inspect
end
x = 0 # or 1
begin
   puts "Before divide on x"
   12/x
   puts "After devide on x"
rescue Exception => e
   puts "In rescue block"
   puts e.message
   puts e.backtrace.inspect
else
    puts "In else block"
ensure
  puts "In ensure block"
end

puts "---Custom exception"

class MyError < StandardError
   #attr_reader :reason
   def initialize(reason)
      @reason = reason
   end
end

begin
    begin
        x = 3/0
    rescue
        raise MyError.new("My error!")
    end
rescue MyError => e
   puts "In rescue block MyError"
   puts e.message
   puts e.to_s
   puts e.backtrace.inspect
   puts e.cause #return previous exception
rescue Exception => e
   puts "In rescue block Exception"
   puts e.message
   puts e.backtrace.inspect
end

