class Animal 
  
  @@species = ['pig', 'cow', 'dog']
  @@total_animals = 0 
  @@current_animals = [] 
  
  attr_accessor :noise, :color 
  
  def initialize(options={})
    @noise = options[:noise] || 'Grrr!'
    @color = options[:color] || 'blue'
    @@total_animals += 1 
    @@current_animals << self 
  end 
  
  def self.species
    @@species
  end 
  
  def self.species=(array)
    return unless array.is_a?(Array)
    @@species = array 
  end 
  
  def self.total_animals 
    @@total_animals 
  end 
  
  def self.create_a_pig 
    Animal.new(noise: 'Oink!', color: 'pink')
  end 
end 






Animal.species.each do |type|
  puts type 
end 

will = Animal.create_a_pig 
puts will.noise 
puts Animal.total_animals 

Animal.species = ['cat', 'dog', 'moose']
Animal.species.each do |type|
  puts type 
end 
