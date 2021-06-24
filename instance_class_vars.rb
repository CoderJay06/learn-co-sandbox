class Being 
  # Instance var @@ = class var, shared by all instances 
  @@is = true 
  
  # Constructor method 
  def initialize nm 
    @name = nm 
  end 
  
  # Description of the object 
  def to_s 
    "This is #{@name}"
  end 
  
  # Returns class variable 
  def does_exist? 
    @@is 
  end 
end 

# Three objects are created from the Being class 
b1 = Being.new "Being 1"
b2 = Being.new "Being 2" 
b3 = Being.new "Being 3"

# Calls to_s on each object 
p b1, b2, b3 

# Call does_exist? on each instance, print return vals 
p b1.does_exist?
p b2.does_exist?
p b3.does_exist? 