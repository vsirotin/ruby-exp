time = Time.new
p time
puts time

p time.zone       # => "UTC": return the timezone
p time.utc_offset # => 0: UTC is 0 seconds offset from UTC
p time.isdst      # => false: If UTC does not have DST.
p time.utc?       # => true: if t is in UTC time zone
p time.localtime  # Convert to local timezone.
p time.gmtime     # Convert back to UTC.
p time.getlocal   # Return a new Time object in local zone
p time.getutc     # Return a new Time object in UTC

puts "before strftime"
puts time.strftime("%Y-%m-%d %H:%M:%S")
puts "after strftime"

values = time.to_a
p values
puts values

puts("---Time manipulation")
t = Time.now
p t
s = t.to_i #seconds since epoch
p s
t1 = Time.at(s + 10)
p t1

now = Time.now
puts now

past = now - 10         # 10 seconds ago.
puts past

future = now + 10  # 10 seconds in the future
puts future

diff = future - past
puts diff
