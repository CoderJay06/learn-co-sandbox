class Baby 
  attr_accessor(:name, :eye_color) # Class method 
  
  @@all = [] 
  
  def self.attr_accessor(property)
    define_method property do 
      self.instance_variable_get(":@#{property}")
    end 
  end 
  
  def self.all # Class Method , getter 
    @@all 
  end 
  
  def initialize # Instance Method, Hook 
    @@all.<<(self) 
    
    @fingerprint = rand(1..100) 
    cry 
  end 
  
  def cry # Instance MEthod, behavior 
    puts "waaaa"
  end 
  
  def name # Instance Method getter/reader 
    the_name 
  end 
  
  def name=(name_argument)
    the_name = name_argument  # Instance Method , getter/setter 
    
  end 
   
   def eye_color 
     @eye_color 
   end 
   
   def eye_color=(eye_color)
     @eye_color 
   end 
   
 end 

class Dog 
  
  def bark # INstance method
    # Instance scope 
    puts "" 
  end 
  
end 



















