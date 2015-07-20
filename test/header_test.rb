require 'minitest/autorun'
require 'minitest/pride'
require './lib/header.rb'

class HeaderTest < Minitest::Test

  def test_it_exist
    assert Header
  end

  def test_it_can_log_the_header_input
      input_for_test = Header.new("# This **is** a test")
      expected = "# This **is** a test"
      assert_equal expected, input_for_test.input
  end

  def test_it_can_header_the_input
    input_for_test = Header.new("# This **is** a test")
    expected = ["<h1># This **is** a test</h1>"]
    assert_equal expected, input_for_test.html_the_array
  end

  def test_it_can_header_the_more_hashtaged_input
    input_for_test = Header.new("## This **is** a test")
    expected = ["<h2>## This **is** a test</h2>"]
    assert_equal expected, input_for_test.html_the_array
  end

  def test_it_can_remove_markdown_from_the_input
    input_for_test = Header.new("# This **is** a test")
    expected = ["<h1>This **is** a test</h1>"]
    assert_equal expected, input_for_test.un_md_the_array
  end

  def test_it_can_remove_remaing_hashtags_from_the_input
    input_for_test = Header.new("#### This *really **is** a* test")
    expected = ["<h4>This *really **is** a* test</h4>"]
    assert_equal expected, input_for_test.un_pound_the_array
  end

end
