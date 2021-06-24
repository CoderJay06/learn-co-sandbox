class Post 
  has_many :posts_tags 
  has_many :tags, through: :posts_tags 
end 

class PostTag 
  belongs_to :post 
  belongs_to :author 
  
end 

class Tag  
  has_many :posts_tags 
  has_many :posts, through: :posts_tags
end 