class Artist
  attr_accessor :name 
  attr_reader :songs
  
  @@song_count = 0
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  def add_song(song)
    @@song_count += 1
    @songs << song # has many
    song.artist = self # belongs to 
  end 
  
  def add_song_by_name(name)
    s = Song.new(name)
    self.add_song(s)
    s
  end 
  
  def song_count 
    @@song_count
  end 
  
  
  
end 


class Song 
  attr_accessor :name, :artist  
  
  def initialize(name)
    @name = name 
  end 
  

end 



















