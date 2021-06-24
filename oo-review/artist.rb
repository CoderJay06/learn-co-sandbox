class Artist 
  attr_accessor :name
  attr_reader :all 

  @@all = []
  
  def self.all
    @@all 
  end 
  
  def self.find_by_name(name)
    # match = nil # switch/flag 
    
    # @@all.each do |artist|
    #   if artist.name == name 
    #     match = artist 
    #   end 
    # end 
    # match # no matter what, return switch/flag 
    @@all.find{|a| a.name == name}
  end 
  
  def save
    @@all << self 
  end
  
end 

taylor = Artist.new 
taylor.name = "Taylor" 
taylor.save #=> store the instance of artist in memory

Artist.find_by_name("Taylor")

if taylor == Artist.find_by_name("Taylor")
  puts "Good night" 
end 

# 1. Instantiation and Saving objects 
# 2. Class Variables 
# 3. Class Methods 
# 4. Enumeration - looping to find a match 
# 5. Introduce a module to share this functionallity with songs