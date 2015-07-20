require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel.rb'

class ChiselTest < Minitest::Test

  def test_it_exist
    assert Chisel
  end

  def test_it_can_split_the_input
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    expected =
["# My Life in Desserts", "## Chapter 1: The Beginning", "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in
**Food & Wine** this place has been packed every night.\"", "My favorite cuisines are:", "* Sushi
* Barbecue
* Mexican", "\"Boo!\"", "My *emphasized and **stronged** text* is awesome.", "# SCARY!", "##### Super spooky!", "1. French
1. Thai
1. Japanese", "Yay!
"]
    assert_equal expected, input_for_test.split_it_up
  end

  def test_it_can_stylize_the_logic
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    output_for_test = File.read('my_output.html')
    expected = output_for_test
    assert_equal expected, input_for_test.stylize_amp
  end

end
