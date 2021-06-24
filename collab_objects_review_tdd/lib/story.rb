class Story 
  attr_accessor :name 
  attr_reader :author # Belongs to author 
  
  def author=(author) # Belongs to author 
    raise AssociationTypeMismatchError, "#{author.class} recieved Author expected" if !author.is_a?(Author)
      @author = author 
      author.add_story(self) unless author.stories.include?(self)
  end 
  
  def category=(category) # Belongs to category
    raise AssociationTypeMismatchError, "#{category.class} recieved category expected" if !category.is_a?(category)
      @author = category 
      category.add_story(self) unless category.stories.include?(self)
  end 
  
end 