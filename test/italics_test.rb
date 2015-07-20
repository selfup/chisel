require 'minitest/autorun'
require 'minitest/pride'
require './lib/bold.rb'
require './lib/italics.rb'

class ItalicsTest < Minitest::Test

  def test_it_exist
    assert Italics
  end

  def test_it_can_log_the_italic_input
      input_for_test = Italics.new("This *is* a test")
      expected = "This *is* a test"
      assert_equal expected, input_for_test.input
  end

  def test_it_can_bold_the_input
    input_for_test = Italics.new("This *is* a test")
    expected = "This <em>is</em> a test"
    assert_equal expected, input_for_test.italisize_the_string
  end

  def test_it_can_do_italics_after_bolding_is_present
    input_for_test = Bold.new("This *really **is** a* test").bold_the_string
    bold_input = Italics.new(input_for_test)
    expected = "This <em>really <strong>is</strong> a</em> test"
    assert_equal expected, bold_input.italisize_the_string
  end

end
