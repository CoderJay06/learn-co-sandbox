class Song 
  attr_accessor :artist, :name, :genre 
  
  @@all = [] 
  
  def initialize(name, genre)
    @name = name 
    @genre = genre 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    self.artist.name 
  end 
  
end 
# has-many Relationship: 

# Initializing with Empty Collection 

class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
  
end 


drake = Artist.new("Drake")
drake.add_song("In My Feelings") 
drake.add_song("Hotline Bling") 
drake.songs 




kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
 
drake.add_song(kiki)
drake.add_song(hotline)

lil_nas_x = Artist.new("Lil Nas X")
rick = Artist.new("Rick Astley")
 
old_town_road = Song.new("Old Town Road","hip-hop")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up","pop")
 
old_town_road.artist = lil_nas_x
never_gonna_give_you_up.artist = rick
 
Song.all.first.name #=> "Old Town Road"
Song.all.first.genre #=> "hip-hop"
Song.all.first.artist #=> #<Artist:0x00007ff1d90dbf38 @name="Lil Nas X", @songs=[]>
Song.all.first.artist.name #=> "Lil Nas X"

Song.all.select {|song| song.artist == lil_nas_x}

Song.all.select {|song| song.artist == rick} 






class Artist 
  attr_Accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
end 

class Song 
  attr_accessor :artist, :name, :genre 
  
  @@all = [] 
  
  def initialize(name, genre) 
    @name = name 
    @genre = genre 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    self.artist.name 
  end 
end 
























