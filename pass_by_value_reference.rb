["cats", "dogs", "squirrels"].each do |word|
  word << "!"
end 

[1,2,3].each do |num|
  num += 1
end 
# => [1, 2, 3]

[[1], [2], [3]].each do |array|
  array << 1 
end 
# => [[1, 1], [2, 1], [3, 1]]

array = [1] 
string = "1" 
number = 1 

def push(object)
  object << 1 
end 

# objects that are passed by reference are changed:

push(array)
# => [1,1]
array
# => [1,1]

push(string)
# => "1\u0001"
string
# => "1\u0001"

# objects that are passed by value are not changed:
push(number)
# => 2
number
# => 1












