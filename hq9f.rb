# extend kernal to include global method 'h'
module Kernel
  def h
    puts 'Hello, World!'
    exit
  end
end

# This is documentation`
class HQ9F
  attr_accessor :incrementor, :lyrics, :accumulator, :accumulator_array

  def input_99
    puts @lyrics[6]
    @incrementor = gets.strip.to_i
    @final = @incrementor
  end

  def dont_repeat_yourself
    puts @incrementor.to_s + @lyrics[0] + @lyrics[1]
    puts @incrementor.to_s + @lyrics[2] + @lyrics[1]
    puts @lyrics[3] + @lyrics[1]
    @incrementor -= 1
  end

  def _99
    input_99
    while @incrementor >= 0
      if @incrementor > 1
        dont_repeat_yourself
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1] + @lyrics[1]
      elsif @incrementor == 1
        dont_repeat_yourself
        puts @lyrics[4] + @lyrics[1] + @lyrics[1]
      else
        2.times { puts @lyrics[4] }
        puts @lyrics[5] + @lyrics[1] + @final.to_s + @lyrics[0]
        @incrementor -= 1
      end
    end
  end

  def +
    @accumulator = @accumulator_array[-1] + 1

    @accumulator_array.push(@accumulator)
  end
end

hq9f = HQ9F.new

hq9f.accumulator_array = [0]

hq9f.lyrics = [
  ' bottles of beer on the wall!',
  "\n",
  ' bottles of beer!',
  'Take one down, pass it around--',
  'no more bottles of beer on the wall!',
  'Go to the store, buy some more,',
  'Enter a number of bottles of beer on the wall:'
]

puts 'Do you want to see the accumulator, yes or no?'
see_accumulator = gets.strip.downcase
puts 'How many times should we increment the accumulator?'
accumulator_increment = gets.strip.to_i

accumulator_increment.times { hq9f.+ }
puts hq9f.accumulator_array if see_accumulator == 'yes'

hq9f._99

h
