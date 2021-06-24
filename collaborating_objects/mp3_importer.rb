# class MP3Importer 
#   attr_accessor :path 
  
#   def intitialize(path)
#     @path = path 
#   end 
  
#   def files 
#     Dir.entries(path).reject {|f| f[0].include?(".")} 
#   end 
  
#   def import 
#     files.each do |file|
#       parts = file.split(" - ")
#       artist_name = parts[0] 
#       song_name = parts[1] 
      
#       a = Artist.find_or_create_by_name(artist_name) 
#       a.add_song(Song.new(song_name)) 
#     end 
#   end 
  
# end 

class MP3Importer 
  def import(list_of_filenames)
    list_of_filenames.each{|filename| Song.new_by_filename(filename) }
  end 
  
end 

















