class Song 
  attr_accessor :name 
  @@all = [] 
  
  def initialize(name)
    @name = name 
  end 
  
  def self.all 
    @@all 
  end 
  
end 

class Person 
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name =name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(name)
    @@all.find{|person| person.name == name}
  end 
end 


Person.all.find{|person| person.name == "Sandi Metz"}


class Person 
  attr_accessor :name, :age, :company 
  
  def self.new_from_csv(csv_data)
    rows = csv_data.split("\n")
    people = rows.collect do |row|
      data = row.split(", ")
      name = data[0] 
      age = data[1] 
      company = data[2] 
      
      person = self.new # important line 
      person.name = name 
      person.age = age 
      person.company = company 
      person 
    end 
    people 
  end 
end 

csv_data = "Elon Musk, 45, Tesla
Mark Zuckerberg, 32, Facebook
Martha Stewart, 74, MSL"

rows = csv_data.split("\n")
people = rows.collect do |row|
  data = row.split(",")
  name = data[0] 
  age = data[1]
  company = data[2] 
  person = Person.new 
  person.name = name 
  person.age = age 
  person.company = company 
  person 
end 

people 
  
  
#=> [
  #<Person @name="Elon Musk"...>,
  #<Person @name="Mark Zuckerberg"...>,
  # ...
# ]
  
  
class Person 
  attr_accessor :name 
  
  @@all = [] 
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.create(name)
    person = self.new 
    person.name = name 
    @@all << person 
  end 
  
  def self.print_all 
    self.all.each{|person| puts "#{person.name}"}
  end 
  
  def normalize_name 
    self.name.split(" ").collect{|w| w.capitalize}.join(" ")
  end 
  
  def self.normalize_names 
    self.all.each do |person| 
      person.name = person.name.split(" ").collect{|w| w.capitalize}.join(" ")
    end 
  end 
  
  def self.destroy_all 
    self.all.clear 
  end 
  
end 
    
  
  

































