# extend kernal to include global method 'h'
module Kernel
  def h
    puts 'Hello, World!'
    exit
  end
end
 
# This is documentation
class HQ9F
  include Enumerable
  attr_accessor :incrementor, :lyrics, :accumulator, :accumulator_array, :array
  
  def each
    @array = [ "Food", "is", "GOOD!" ] 
    @array.each { |x| puts x }
  end   

  def input_99
    puts @lyrics[6]
    @incrementor = gets.strip.to_i
    @final = @incrementor
  end
 
  def _99
    input_99
    while @incrementor >= 0
      if @incrementor > 1
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1]
        puts @incrementor.to_s + @lyrics[2] + @lyrics[1]
        puts @lyrics[3] + @lyrics[1]
        @incrementor -= 1
        puts @incrementor.to_s + @lyrics[0] + @lyrics[1] + @lyrics[1]
      elsif @incrementor == 1
        puts @incrementor.to_s + @lyrics[7] + @lyrics[1]
        puts @incrementor.to_s + @lyrics[8] + @lyrics[1]
        puts @lyrics[3] + @lyrics[1]
        @incrementor -= 1
        puts @lyrics[4] + @lyrics[0] + @lyrics[1] + @lyrics[1]
      else
        puts @lyrics[4] + @lyrics[0]
        puts @lyrics[4] + @lyrics[2]
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