require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph.rb'

class ParagraphTest < Minitest::Test

  def test_it_exist
    assert Paragraph
  end

  def test_it_can_log_the_paragraph_input
      input_for_test = Paragraph.new("This is a test")
      expected = "This is a test"
      assert_equal expected, input_for_test.input
  end

  def test_it_can_split_the_input
    input_for_test = Paragraph.new("This is a test")
    expected = ["This is a test"]
    assert_equal expected, input_for_test.split_it_up
  end

  def test_it_can_add_tags_around_the_array
    input_for_test = Paragraph.new("This is a test")
    expected = "<p>\n  This is a test\n</p>"
    assert_equal expected, input_for_test.html_the_array
  end

end
