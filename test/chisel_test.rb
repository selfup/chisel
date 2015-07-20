require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel.rb'

class ChiselTest < Minitest::Test

  def test_it_exist
    assert Chisel
  end

  def test_it_can_read_the_input
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    expected = File.read(input_1)
    assert_equal expected, input_for_test.input
  end

  def test_it_can_split_the_input
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    expected = input_for_test.input.split("\n\n")
    assert_equal expected, input_for_test.split_it_up
  end

  def test_logic_the_things_modifies_split_it_up
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    expected = input_for_test.split_it_up
    refute_equal expected, input_for_test.logic_the_things
  end

  def test_it_can_join_the_logic
    input_1 = ARGV[0]
    input_for_test = Chisel.new(input_1)
    expected = input_for_test.assemble
    assert_equal expected, input_for_test.logic_the_things.join("\n\n")
  end

  def test_it_can_stylize_the_logic
    input_1 = ARGV[0]
    output_1 = ARGV[1]
    input_for_test = Chisel.new(input_1)
    output_for_test = File.read(output_1)
    expected = output_for_test
    assert_equal expected, input_for_test.stylize_amp
  end

end
