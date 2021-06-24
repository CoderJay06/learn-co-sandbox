# Nested Arrays

nested_students = [
  ["Mike", "Grade 10", "A average"],
  ["Tim", "Grade 10", "C average"],
  ["Monique", "Grade 11", "B Average"]
]

location_array =  [
  ["The Flatiron School", 40.705329, -74.013970],
  ["Disney World", 28.385233, -81.563874]
]

music_library = [
  ["Adele",
    ["19",
      ["Day Dreamer", "Best for Last"]
    ],
    ["21",
      ["Rolling in the Deep", "Rumor Has It"]
    ]
  ],
  ["Beyonce",
    ["4",
      ["1 + 1", "Countdown"]
    ],
    ["Beyonce",
      ["Haunted", "Pretty Hurts"]
    ]
  ]
]

def music_library_iterator(music_library)
  music_library.each do |artist_array|
    artist_array.each do |artist_element|
      if artist_element.class != Array 
        puts "Artist: #{artist_element}"
      else
        artist_element.each do |album_element|
        if album_element.class != Array 
          puts "Album: #{album_element}"
        else 
          album_element.each do |song_element| 
            puts "Song: #{song_element}"
            end 
          end 
        end 
      end 
    end 
  end 
end
music_library_iterator(music_library) 
            
            
            
            
            
            
            
            


















