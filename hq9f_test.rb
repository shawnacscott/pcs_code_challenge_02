require "minitest/autorun"
require './hq9f.rb'

class TestMyClass < MiniTest::Unit::TestCase
  def setup
    @my_instance = HQ9F.new
  end

  def test_example
    assert_output("hi\n"){ puts "hi"}
  end

  def test_each_method_iterates
    assert_output("Food\nis\nGOOD!\n"){@my_instance.each}
  end
end