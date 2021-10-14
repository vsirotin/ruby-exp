path = File.join(
    File.dirname(File.dirname(File.absolute_path(__FILE__))),
    'tmp')
p path

full_path_test = path + "/test.txt"
f1 = File.new(full_path_test , "r")
if f1
   content = f1.sysread(200)
   puts content
else
   puts "Unable to open file!"
end

f2 = File.new(path + "/test1.txt" , "w")
if f1
   content = f2.syswrite("1234-ABC")
else
   puts "Unable to open file for writing!"
end

f3 = File.new(path + "/test1.txt" , "r")
if f3
   content = f3.sysread(200)
   puts content
else
   puts "Unable to open file!"
end

arr = IO.readlines(full_path_test)
puts arr[0]
puts arr[1]

IO.foreach(path + "/test.txt"){|line| puts "This is line #{line}"}

puts "---Exceptions"
file = nil
file_name = "file_not-exist"
begin
   puts "Before file open"
   file = open(file_name)
   puts "After file open"
rescue
    puts "After rescue"
   file_name = full_path_test
   retry
end

puts file.sysread(200)