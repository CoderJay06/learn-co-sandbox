# class Artist 
#   attr_accessor :name, :songs 
#   @@all = []
  
#   def self.find_or_create_by_name(name) 
#     find_by_name(name) || create_by_name(name)
#   end 
  
#   def self.find_by_name(name) 
#     self.all.detect{|a| a.name == name}
#   end 
  
#   def self.create_by_name(name) 
#     Artist.new(name)
#   end 
  
#   def print_songs 
#     self.songs.each do |song|
#       puts song.name 
#     end 
#   end 
  
#   def initialize(name)
#     @name = name 
#     @songs = []
#     self.save 
#   end
  
#   def save 
#     @@all << self 
#   end 
  
  
#   def add_song(song) 
#     self.songs << song 
#     song.artist = self 
#   end 
  
#   def save # Instance method 
#     @@all << self  # Who is self? Instance of Artist class 
#   end
  
#   def self.all 
#     @@all 
#   end 
  
#   def self.find_or_create_by_name(name)
  
#   end 
  
#   def self.find_by_name(name)
#   end 
  
#   def self.create_by_name(name)
#   end 
  
#   def print_songs 
#     @songs.each do |song|
#       puts song.name  
#     end 
#   end 
  
# end 

class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
end 













