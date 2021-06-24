require 'pry' 

class Dog 
  
  def bark # instance meth
    puts "woof i'm #{@my_name}"
  end 
  
  def name=(str)
    @my_name = str 
  end 
  
  def name 
    @my_name 
  end 
  
  def breed=(str)
    @breed 
  end 
  
end 


snoop = Dog.new 
snoop.setName("Snoop") 
snnop.bark #=> woof i'm Snoop



class Person 
  attr_accessor :name, :age,:hair_color 
  
  attr_reader :dna 
  attr_writer :favorite_color 
  
  def name=(name)
    @first_name = @name.split(" ").first 
    @last_name = @name.split(" ").last 
  end 
  
  def name 
    "#{@first_name} #{@last_name}"\
  end 
  
  
  def greeting 
    puts "Hi i'm #{@first_name}"
  end 
  
  
end 

jay = Person.new 
jay.name 



class Baby 
  attr_accessor 
  
  @@all = [] 
  
  def initialize(should_save = false) #  lifecycle hooks events 
    self.save if should_save 
  end 
  
  def cry 
    puts "waaaaaa#{name}"
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(name)
    @@all.detect {|n| n.name == name }
  end 
  
end 


joe = Baby.new
joe.name = "Joe"
joe.cry


def word_count(str)
  str.split(" ").length 
end 

word_count("Hello world") 


class String 
  
    def word_count
      self.split(" ").length 
    end 

end 


"Hello".word_count 











