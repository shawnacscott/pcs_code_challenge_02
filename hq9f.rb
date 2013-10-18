module Kernel
  def h
    puts "Hello, World!"
    exit
  end
end

class HQ9F
  attr_accessor :incrementor, :lyrics, :accumulation
  def pass_zero
    @variable = 0
    @accumulation = @variable
  end
  def _99
    puts @lyrics[6]
    @incrementor = gets.strip.to_i
    @final = @incrementor
    while @incrementor >= 0
      if @incrementor > 1
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1]
        puts @incrementor.to_s + @lyrics[2] + @lyrics[1]
        puts @lyrics[3] + @lyrics[1]
        @incrementor -= 1
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1] + @lyrics[1]
      elsif @incrementor == 1
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1]
        puts @incrementor.to_s + @lyrics[2] + @lyrics[1]
        puts @lyrics[3] + @lyrics[1]
        @incrementor -= 1
        puts @lyrics[4] + @lyrics[1] + @lyrics[1]
      else 
        puts @lyrics[4]
        puts @lyrics[4]
        puts @lyrics[5]
        puts @final.to_s + @lyrics[0]
        @incrementor -= 1
      end
    end
  end
  def +
    @accumulation += 1
  end
end

hq9f = HQ9F.new
hq9f.pass_zero

hq9f.lyrics = [
  ' bottles of beer on the wall!',
  "\n",
  ' bottles of beer!', 
  'Take one down, pass it around--', 
  'no more bottles of beer on the wall!', 
  'Go to the store, buy some more,',
  'Enter a number of bottles of beer on the wall: (digits only, please!)'
]

puts 'Do you want to see the accumulator, yes or no?'
see_accumulator = gets.strip
if see_accumulator == 'yes'
  puts hq9f.+
end

hq9f._99
