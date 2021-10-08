puts "---while Statement"

i = 0
num = 5

while i < num  do
   puts "Inside first loop i = #{i}"
   i +=1
end

puts "After first loop i = #{i}"

num =10
begin
   puts "Inside second loop i = #{i}"
   i +=1
end while i < num

puts "After second loop i = #{i}"

puts "---until Statement"

i = 0
num = 5

until i < num  do
   puts "Inside first loop i = #{i}"
   i +=1
end

puts "After first loop i = #{i}"

i = 0
num = 5
begin
   puts "Inside second loop i = #{i}"
   i +=1
end until i < num

puts "---for Statement"
for i in 0..5
   puts "i= #{i}"
end


puts "---each Statement"
(2..6).each do |x|
   puts "x =  #{x}"
end

puts "---break Statement"
for i in 0..5
   puts "before if i= #{i}"
   if i > 2 then
      break
   end
   puts "after if i= #{i}"

end
puts "after for i= #{i}"

puts "---next Statement"
for i in 0..5
   puts "before if i= #{i}"
   if i < 2 then
      next
   end
   puts "after if i= #{i}"

end
puts "after for i= #{i}"

puts "---redo Statement"

redo_num = 0
for i in 0..5
   puts "before if redo_num=#{redo_num} i=#{i}"
   if (i > 2) && (redo_num < 2) then
      redo_num = redo_num + 1
      redo
   end
   puts "after if redo_num=#{redo_num} i=#{i}"
end

puts "---retry Statement"

retry_num = 0
for i in 0..5
   puts "before if retry_num=#{retry_num} i=#{i}"
   if (i > 2) && (retry_num < 2) then
      retry_num = retry_num + 1
      redo
   end
   puts "after if retry_num=#{retry_num} i=#{i}"
end
