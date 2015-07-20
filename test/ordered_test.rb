require 'minitest/autorun'
require 'minitest/pride'
require './lib/ordered.rb'

class OrderedTest < Minitest::Test

  def test_it_exist
    assert Ordered
  end

  def test_it_can_log_the_ordered_input
      input_for_test = Ordered.new("This 1. this 1. is 1. a test")
      expected = "This 1. this 1. is 1. a test"
      assert_equal expected, input_for_test.input
  end

  def test_it_can_make_the_correct_input_mod
    input_for_test = Ordered.new("This 1. this 1. is 1. a test")
    expected = "This 1. this 1. is 1. a test\n"
    assert_equal expected, input_for_test.make_input_mod
  end

  def test_it_can_split_at_ordered_list
    input_for_test = Ordered.new("This 1. this 1. is 1. a test")
    expected = ["This ", "this ", "is ", "a test
"]
    assert_equal expected, input_for_test.split_it_up
  end

end
