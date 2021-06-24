contacts = { 
  "Jon Snow" => {
    name: "Jon", 
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"] },
    "Freddy Mercury" => {
      name: "Freddy", 
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
  
  jon_snow = contacts["Jon Snow"]
  jons_fav_ice_cream = jon_snow[:favorite_ice_cream_flavors] 
  jons_fav_ice_cream << "mint chip"
  
  
contacts["Jon Snow"][:address] = "The Wall"


  contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we", 
    favorite_ice_cream_flavors: ["chocolate", "vanilla", "mint chip"],
        knows: nil
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}
  
# contacts.each do |person, data|
#   data.each do |attribute, value|
#     puts "#{attribute}: #{value}"
#   end 
# end 
  
contacts.each do |person, data|
  data.each do |attribute, value|
    if attribute == :favorite_ice_cream_flavors
      value.each do |flavor|
        puts "#{flavor}"
      end 
    end 
  end 
end 








  
  
  
  
  