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


# Mass Assignment and Metaprogramming 

class User 
  attr_accessor :name, :user_name, :age, :location, :bio 
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    end 
  end 
  
end 

# sophie = User.new 
# sophie.send("#{method_name}=", value)


class User 
  attr_accessor :name, :age, :location, :user_name 
  
  def initialize(user_name:, name:, age:, location:)
    @user_name = user_name 
    @name = name 
    @location = location 
    @age = age 
  end 














