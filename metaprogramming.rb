class User 
  attr_accessor :name, :age, :location, :user_name 
  
  def initialize(user_name:, name:, age:, location:)
    @user_name = user_name 
    @name = name 
    @location = location 
    @age = age 
  end 
end 
  
    
twitter_user = {name: "Sophie", user_name: "sm_debenedetto", age: 26, location: "NY, NY"}
    
    
sophie = User.new(twitter_user)
 #<User:0x007fa1293e68f0 @name="Sophie", @age=26, @user_name="sm_debenedetto", @location="NY, NY">
 
 
 # new and improved(metaprogramming): 
 
 class User 
   attr_accessor :name, :user_name, :age, :location, :bio 
   def initialize(attributes)
     attributes.each {|key, value| self.send(("#{key}="), value)}
   end 
 end 

 jay = User.new
 jay.send("#{method_name}=", value) 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
    