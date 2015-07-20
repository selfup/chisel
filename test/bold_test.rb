require 'minitest/autorun'
require 'minitest/pride'
require './lib/bold.rb'

class BoldTest < Minitest::Test

  def test_it_exist
    assert Bold
  end

  def test_it_can_log_the_bold_input
      input_for_test = Bold.new("This **is** a test")
      expected = "This **is** a test"
      assert_equal expected, input_for_test.input
  end

  def test_it_can_bold_the_input
    input_for_test = Bold.new("This **is** a test")
    expected = "This <strong>is</strong> a test"
    assert_equal expected, input_for_test.bold_the_string
  end

  def test_it_can_bold_with_italic_markes_present
    input_for_test = Bold.new("This *really **is** a* test")
    expected = "This *really <strong>is</strong> a* test"
    assert_equal expected, input_for_test.bold_the_string
  end

end
