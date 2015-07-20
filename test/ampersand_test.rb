require 'minitest/autorun'
require 'minitest/pride'
require './lib/ampersand.rb'

class AmpersandTest < Minitest::Test

  def test_it_exist
    assert Amp
  end

  def test_it_can_log_the_ampersand_input
    input_for_test = Amp.new("This & this is a test")
    expected = "This & this is a test"
    assert_equal expected, input_for_test.input
  end

  def test_it_can_ampersand_the_input
    input_for_test = Amp.new("This & this is a test")
    expected = "This &amp; this is a test"
    assert_equal expected, input_for_test.amp_the_string
  end

end
