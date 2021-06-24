# 7.times do
#   puts "Stop hitting yourself!"
# end

# input = ""
# while input != "Mommmm!!"
#   puts "Stop hitting yourself"
#   input = gets.chomp
  
# end 

brothers = ["Tom", "Tim", "Jim"]

count = 0 
while count <= brothers.length-1
  puts "Stop hitting yourself #{brothers[count]}"
  count += 1 
end 


primary_colors = ["Red", "Yellow", "Blue"]
primary_colors.each do |color|
  puts "Primary  color #{color} is #{color.length} letters long"
end




brothers = ["Tim", "Tom", "Jim"]
counter = 1 
brothers.each do |brother|
  puts "this loop num #{counter}"
  puts "stop hitting yourself #{brother}"
  counter += 1 
end 

brothers.each{|brother|
  puts "stop hitting yourself #{brother}!"}












