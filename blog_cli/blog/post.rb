class BlogCLI::Post < ActiveRecord::Base
  @@all = []
  
  def initialize 
    @@all << self 
  end 
end 