# class Cat 
  
#   @@all = [] 
  
#   def initialize(name, breed, age)
#     @name = name 
#     @breed = breed 
#     @age = age 
#     @@all << self 
#   end 
  
#   def self.all 
#     @@all 
#   end 
  
#   def self.save(name, breed, age, database_connection)
#     database_connection.execute("INSERT INTO cats (name, breed, age) VALUES()", name, breed, age)
#   end 
# end 

# database_connection = SQLite3::Database.new('db/pets.db')
 
# Cat.new("Maru", "scottish fold", 3)
# Cat.new("Hana", "tortoiseshell", 1)


# Cat.all.each do |cat|
#   Cat.save(cat.name, cat.breed, cat.age, database_connection)
# end





class Song
 
attr_accessor :name, :album
attr_reader :id
 
  def initialize(id=nil, name, album)
    @id = id
    @name = name
    @album = album
  end
  
  def save 
    if self.id 
      self.update 
    else 
      sql = <<-SQL 
        INSERT INTO songs (name, album)
        VALUES (?, ?)
      SQL
      
      DB[:conn].execute(sql, self.name, self.album)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0] 
    end 
  end 
  
  def self.create(name:, album:)
    song = Song.new(name, album)
    song.save 
    song 
  end 
  
  def self.find_by_id(id)
    sql = "SELECT * FROM songs WHERE id = ?"
    result = DB[:conn].execute(sql, id)[0]
    Song.new(result[0], result[1]. result[2])
  end 
  
  def update 
    sql = "UPDATE songs SET name = ?, album = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.album, self.id)
  end 
  
  def self.find_or_create_by(name:, album:)
    song = DB[:conn].execute("SELECT * FROM songs 
                              WHERE name = ? AND album = ?", name, album)
    if !song.empty? 
      song_data = song[0] 
      song = Song.new(song_data[0], song_data[1], song_data[2])
    else 
      song = self.create(name: name, album: album)
    end 
    song 
  end 
  
end 






























