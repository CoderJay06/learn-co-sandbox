class Author
  attr_accessor :name

  def initialize
    @stories = [] # has_many stories interface
  end

  def stories # has_many stories interface
    @stories.dup.freeze
  end

  def add_story(story) # has_many stories interface
    raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
    @stories << story
    story.author = self unless story.author == self 
  end

  def bibliography 
    @stories.collect {|s| s.name}
    # @stories.collect(&:name) #=> Symbo to Proc 
  end 
  
  def categories # has many categories through stories 
    self.stories.collect{|s| s.category}.uniq 
  end 
    
end




