# todo 
require 'pry'
class Concert
  attr_accessor :venue, :name, :location
  @@all = [] #=> Class variable 
  ALL = []
  # Class scope 
  
  def self.create # Constructor  (An extension of initiailize)
    c = self.new 
    c.save 
    c 
  end 
  
  # def self.new_from_seatgeek(url)
  #   doc = Nokogiri::HTML(open(url))
  # end 
  
  def self.new_from_hash(hash) # Constructor 
    c = self.new 
    c.name = hash[:name]
    c.venue = hash[:venue]
    c.location = hash[:location]
    c
  end 
  
  
  def initialize # Instance method 
    # Instance scope 
    self #=> #<Concert>
  end 
  
  def save 
    @all << self # The particular copy of @all 
  end
  
  def self.destroy_all!
    ALL.clear 
  end 
  
 
  def self.find_all_by_location(location)
    @@all.select{|c| c.location == location}
  end
  
  def self.find_by_location(location) # a Class Finder -> finds by location 
    # I need to go through @@all and find the concert whose location matches
    # the location passed into this method. 
    # first i need to create a variable that is the result 
    # Find first concert whose location is location 
    # Very abstract 
    @@all.detect{|c| c.location == location} 
    
    
    # result = nil  # Flag or a Switch 0- Maintaining State 
    
    # @@all.each do |concert| 
    #   result = concert if concert.location == location 
    # end 
    
    # # do something rthat will set result to the correct Concert
    
    # result # return result - by end of this method I know result must be the matching concert 
  end 
  
  def self.all #=> Class reader 
    # Class scope 
    @all # The classes copy of @all #=> A Class instance variable 
  end 
  
end 

kanye_listening_party = Concert.new #=> new concert scheduled
kanye_listening_party.venue=("MSG")
kanye_listening_party.location = "NYC" #=> An instance of a concert 
binding.pry 
Concert.all #=> [#<Concert>...]

Concert.find_by_location("NYC") #=> [#<Concert>, #<Concert>]