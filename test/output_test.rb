require 'minitest/autorun'
require 'minitest/pride'
require './lib/bold.rb'
require './lib/output.rb'

class OutputTest < Minitest::Test

  def test_it_exist
    assert Output
  end

  def test_it_can_output_an_array_of_line_counts_for_input_lines
    ARGV[0] = './my_input.md'
    ARGV[1] = './my_output.html'
    input_for_test = Output.new
    expected = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]
    assert_equal expected, input_for_test.input_thing
  end

  def test_it_can_output_an_array_of_line_counts_for_output_lines
    ARGV[0] = './my_input.md'
    ARGV[1] = './my_output.html'
    input_for_test = Output.new
    expected = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39]
    assert_equal expected, input_for_test.out_put_thing
  end

  def test_it_can_output_an_appropriate_string_in_the_terminal
    ARGV[0] = 'my_input.md'
    ARGV[1] = 'my_output.html'
    input_for_test = Output.new
    expected = "Converted my_input.md (25 lines) to my_output.html (39 lines)"
    assert_equal expected, input_for_test.terminal_output
  end

end
