class Dog 
  
end 

class Baby 
  @@all = [] # Class variable 
  ALL = [] # Class Constant
  attr_accessor :name, :weight, :eye_color, :birthplace, :birthdate
  attr_writer :location
  attr_reader :dna 
  
  def initialize  # Hook / Callback / Life cycle event
    self.cry # Explicit Reciever of self 
    cry # Implicit reciever of self
    @birthday = Time.now 
    @@all  << self # How does an object refer to itself?
  end
  
  def self.all # Class Method (Class Reader)
    @@all 
  end
  
  # Instance Method - represents an objects ability to have logic 
  def cry 
    puts "waaaaaaa"
  end 
  
  def name=(baby_name) # Writer
    @my_name = baby_name # Casting the local variable to Instance
  end
  
  def name # Reader 
    @my_name  # Instance variable
  end
  
  def eye_color=(eye_color)
    @eye_color = eye_color
  end
  
  def self.find_by_name(name) # Class Finder 
    @@all.detect{|baby| baby.name == name}
  end
end

Baby # The class itself 
Baby.new # Instances of the class 

Bab.all #=> [#<Baby>, #<Baby>]
Baby.cry 

blue_ivy = Baby.new 
blue_ivy.name = "Blue Ivy"
  
  
Baby.find_by_name("Blue Ivy")




# Private Methods:

class Bartender 
  attr_accessor :name 
  
  BARTENDERS = [] 
  
  def initialize(name) 
    @name = name 
    BARTENDERS << self 
  end 
  
  def self.all 
    BARTENDERS 
  end 
  
  def intro 
    "Hello, my name is #{name}!"
  end 
  
  def make_drink 
    @cocktail_ingredients = [] 
    choose_liquor
    choose_mixer 
    chooser_garnish
    return "Here is your drink. It contains #{@cocktail_ingredients}"
  end
  
  private 
  
  def choose_liquor 
    @cocktail_ingredients.push("Whiskey")
  end 
  
  def choose_mixer 
    @cocktail_ingredients.push("Vermouth")
  end 
  
  def chooser_garnish
    @cocktail_ingredients.push("Olives")
  end 
  
end 



# Remembering Objects:


class Song
 
  @@all = []
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  def self.print_all_song_names 
    self.all.map(&:name)
  end
end



# Advanced Class Methods: 

class Person 
  attr_accessor :name
  @@people = []
  
  def initialize(name)
    @name = name 
    # self in the initialize method is our new instance
    # self.class is Person
    # self.class.all == Person.all
    self.class.all << self 
  end 
  
  
  def self.all 
    @@people 
  end 
  
  def self.find_by_name(name)
    self.all.find{|person| person.name == name}
  end 
  
end 
  
  
class Person 
  attr_accessor :name, :age, :company 
end 

csv_data = "Elon Musk, 45, Tesla
Mark Zuckerberg, 32, Facebook
Martha Stewart, 74, MSL"

rows = csv_data.split("\n")
people = rows.collect do |row| 
  data = row.split(", ")
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


class Person 
  attr_accessor :name, :age, :company 
  
  def self.new_from_csv(csv_data)
    rows = csv_data.split("\n")
    people = rows.collect do |row|
      data = row.split(", ")
      name = data[0] 
      age = data[1] 
      company = data[2] 
      
      person = self.new 
      person.name = name 
      person.age = age 
      person.company = company 
      person 
    end 
    people 
  end 
end 


class Person 
  attr_accessor :name 
  @@all = [] 
  def self.all 
    @@all 
  end 
  
  def self.create(name)
    person = self.new 
    person.name = name 
    @@all << person 
  end 
  
  def self.print_all 
    self.all.each{|person| puts "#{person.name}"}
  end 
end 



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
  
  def normalize_names 
    self.name.split(" ").collect{|w| w.capitalize}.join(" ")
  end 
  
  def self.normalize_names 
    self.all.each do |person| 
      person.name = person.normalize_names
    end 
  end 
end 


      
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
  
  def self.destroy_all
    self.all.clear
  end 
end 
  

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







  
    
    
    

  
  
  
  
  
  
  
  
  
  
  








































