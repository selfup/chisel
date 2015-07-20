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
    expected = input_line_array = []
    File.foreach(ARGV[0]).map.with_index do |line, line_num|
       input_line_array << line_num
    end
    assert_equal expected, input_for_test.input_line_read
  end

  def test_it_can_output_an_array_of_line_counts_for_output_lines
    ARGV[0] = './my_input.md'
    ARGV[1] = './my_output.html'
    input_for_test = Output.new
    expected = output_line_array = []
      File.foreach(ARGV[1]).map.with_index do |line, line_num|
         output_line_array << line_num
      end
    assert_equal expected, input_for_test.output_line_read
  end

  def test_it_can_output_an_appropriate_string_in_the_terminal
    ARGV[0] = 'my_input.md'
    ARGV[1] = 'my_output.html'
    input_for_test = Output.new
    expected = "Converted #{ARGV[0]} (#{input_for_test.input_line_read.last} lines) to #{ARGV[1]} (#{input_for_test.output_line_read.last} lines)"
    assert_equal expected, input_for_test.terminal_output
  end

end
