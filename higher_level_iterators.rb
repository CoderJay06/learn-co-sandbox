people = [ {:name=>"Dr. Garrett Effertz", :email=>"nevillerunolfsdottir@leschbradtke.com", :height=>64}, {:name=>"Marci Johnson", :email=>"dee@wilkinson.co", :height=>64}, {:name=>"Corrin Kertzmann", :email=>"nelson@schimmellang.org", :height=>59}, {:name=>"Mr. Mel Parisian", :email=>"alanestark@runolfon.io", :height=>63}, {:name=>"Dale Schowalter", :email=>"raguelgerhold@ziemannschaden.info", :height=>60}, {:name=>"Lakita Hills", :email=>"claudko@yostbatz.net", :height=>67}, {:name=>"Chasity Schowalter", :email=>"jerrica@barrows.org", :height=>59}, {:name=>"Carmen Sipes PhD", :email=>"joaquinstiedemann@durgan.io", :height=>83}, {:name=>"Mrs. Lonnie Jacobs", :email=>"domenicwiegand@osinski.com", :height=>74}, {:name=>"Shanon Corwin", :email=>"lanell@sengerstanton.name", :height=>65} ]

people.each do |person|
  puts person[:email]
end

def email_addresses(people) 
  emails = []
  people.each do |person| 
    emails << person[:email]
  end 
  emails 
end 

print email_addresses(people) 

def email_addresses(people) 
  people.map do |person|
    person[:email]
  end 
end

def under_six_feet(people)
  people.select do |person| 
    person[:height] < 72 
  end 
end 

print under_six_feet(people)











# doubled = [0, 1, 2].map do |number|
#   number * 2 
# end 








