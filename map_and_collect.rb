toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings)
  toppings.map do |topping|
    puts "I love #{topping} on my burgers!"
  end 
end 

def hamburger(toppings)
  toppings.collect do |topping|
    puts "I love #{topping} on my burgers!"
  end 
end 

def hamburger(toppings)
  toppings.collect do |topping|
    "I love #{topping} on my burgers"
  end
end

hamburger(toppings)