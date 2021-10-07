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
   def total_no_of_users()
      puts "Call from total_no_of_users of user object with id: "
      puts self
      puts "from file: " + __FILE__ + " in line: " + __LINE__.to_s

      @@no_of_users #Without return
   end
end

cust1 = User.new("John Travolta", "Spring Apartments, Pennsylvania, USA")
cust2 = User.new("Angela Merkel", "Hauptallee, Berlin, Germany")

puts cust1.display_details
puts cust2.display_details
puts "Total number of users: " + cust2.total_no_of_users.to_s

#---Global variables
# It is not recommended to use global variables!
$global_variable = 10
puts "Global variable is #$global_variable"

#---Constants
CONST1 = 1 #Constants begin with an uppercase letter
CONST1 = 2
# Constants may not be defined within methods. Referencing an uninitialized constant produces an error.
# Making an assignment to a constant that is already initialized produces a warning.

puts CONST1