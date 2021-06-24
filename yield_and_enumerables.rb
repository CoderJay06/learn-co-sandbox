require 'pry'

def do_three_times(&b)
  binding.pry
  puts "I'm inside do_three_tmes"
  yield if block_given?
  puts "Now im a method"
end

def square_array(array)
  squares = [] 
  [1, 2, 3, 4].each do |i|
    squares << i * i 
  end
  squares
end  

def count_letters_in_words(array)
  letters_in_words = []
  array.each do |word|
    letters_in_words << word.length 
end

square_array([1, 2, 3, 4])
count_letters_in_words(["one", "two", "three"])

def return_modified(array)
  return_array = []
  array.each do |e|
    binding.pry 
    #return_array << yield(e)
  end 
  return_array
end
  
return_modified([1, 2, 3, 4]){|x| x * x}
# return_modified(["one", "two", "three"]){|x| x.length}
    
binding.pry

# do_three_times() do {puts "I'm in the block"}
# do_three_times() do 
#   puts "I'm in the block" 
# end 