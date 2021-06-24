# Object orientation Mechanics 
  
Class #=> Represents "All of something"
Instance #=> Represents an Individual

class Artist 
    
  def songs=(array_of_song_strings)
  end 
    
end 

# Instances:

class Song 
  attr_accessor :name 
end 

beyonce = Artist.new 
beyonce.songs = [Song.new, Song.new]
  
beyonce.songs.first 
  
class GithubAPI 
  
  def self.login(username, password)
  end 
  
  def favorites
  end 
  
  def repos 
  end 
  
  def pull_requests 
  end 
end 


avi_login = GithubAPI.new("aviflombaum", "password")

avi_login.repos 
avi_pull.requests

dylan_login = GithubAPO.new("aviflombaum", "password")


class Song 
  attr_accesssor :name 
end 

class SpotifyAPI
  def self.most_popular
    ["Popular Song 1", "Pop song 2", "Pop song 3"]
  end 
end 

popular_songs = SpotifyAPI.most_popular 
popular_songs.each do |song_name|
  song = Song.new 
  song.name = song_name 
  somg.save #=> normal save
  song.save! #=> throws an error if save fails
end 

Song.email_new_songs 



class SongScraper 
  def initialize(url)
  end 
  
  def already_scraped?
  end 
end 
  
  
  
SongScraper.new("http://music.com")
  
    
# Singleton:
# A Singletn is a class that never has any Instances

class ErrorLogger
  def self.warn!
  end 
    
  def self.info!
  end 
    
  def self.export
  end
end 


class CraigsList 
  
  def self.scrape_all!
    # goes to the first page of apartments and returns all data 
  end 
end 

CraigsList.scrape_all!

user.find("avi")

# Instance Variables: 

class Person
  attr_accessor :first_name, :last_name, :full_name 
  # def name=(the_name) # Writer/Setter
  #   @name = the_name 
  # end 
  
  # def name # Reader/Getter
  #   @name 
  # end 
  def full_name
    if @full_name # if person has an explicit full name, use it 
      @full_name 
    else # otherwise, by default make a person full name the composition of first, last
      "#{@first_name} #{@last_name}"
    end 
    # @full_name || "#{@first_name} #{@last_name}"
  end 
end 

jay = Person.new 
jay.first_name = "Jay"
jay.last_name = "Cruz"

class Song 
  attr_accessor :artist 
  
  def artist=(artist)
    artist.songs << self 
    @artist = artist # super
  end 
end 

class Artists 
  attr_accessor :songs 
  
  def initialize 
    @songs = []
  end 
end 

beyonce = Artist.new 

crazy_in_love = Song.new 
crazy_in_love.artist = beyonce 

beyonce.songs


class CarrierFactory 
  TYPES = [:air_conditioners, :heaters, :gas_filtration]
  
  def self.products 
    TYPES.each do |type|
      puts type 
    end 
  end 
  
  def initialize(type) 
    return TypeError if !TYPES.include?(type)
  end 
end 

# Class Memoization:

# In an instance method, self will refer to? 
  # The instance itself - the individual

# In a class method, self will refer to ? 
  # The class itself - entire class 
  
class Song 
  @@all = [] # Class Variable
  ALL = [] # Class Constant
  
  def self.create(name) # Custom Constructor 
    song = self.new(name)
    song.save 
    return song 
  end 
  
  def initialize(name)
    @name = name # name is just a string 
  end 
  
  def self.all # Class Reader 
    @@all 
  end 
  
  
end 













air_conditioner = CarrierFactory.new(:type => "Airconditioner")

CarrierFactory.move(:mexico)







