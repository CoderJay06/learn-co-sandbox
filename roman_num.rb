# convert numbers to roman numerals 

def number_map(num)
  num = num.to_i 
  rom_num = nil 
  roman_nums = [nil,'I', 'II', 'III', 'IV', 'VII', 'VIII', 'IX', 'X']
  roman_nums.each_with_index do |rn, indx|
    if num == indx - 1
      rom_num = roman_nums[num]
    end 
  end
  rom_num
end 

# Solution: 

number_map = {
  1 => 'I',
  2 => 'II',
  3 => 'III', 
  4 => 'IV',
  5 => 'V',
  6 => 'VI',
  7 => 'VII',
  8 => 'VIII',
  9 => 'IX', 
  10 => 'X'
}













