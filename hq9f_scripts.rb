require './hq9f.rb'

hq9f = HQ9F.new
 
hq9f.each
puts
hq9f.array.map! { |x| puts x.swapcase }
puts
 
hq9f.accumulator_array = [0]
 
hq9f.lyrics = [
  ' bottles of beer on the wall!',
  "\n",
  ' bottles of beer!',
  'Take one down, pass it around--',
  'no more',
  'Go to the store, buy some more,',
  'Enter a number of bottles of beer on the wall:',
  ' bottle of beer on the wall!',
  ' bottle of beer!'
]
 
puts 'Do you want to see the accumulator, yes or no?'
see_accumulator = gets.strip.downcase
puts 'How many times should we increment the accumulator?'
accumulator_increment = gets.strip.to_i
 
accumulator_increment.times { hq9f.+ }
puts hq9f.accumulator_array if see_accumulator == 'yes'
 
hq9f._99
 
h