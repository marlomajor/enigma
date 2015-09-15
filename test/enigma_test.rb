require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require 'pry'

class EnigmaTest <Minitest::Test

  def test_it_exists
    assert Enigma
  end

  def test_it_generates_key
    key_new_one = KeyGenerator.new.key_file
    key_new_two = KeyGenerator.new.key_file
    refute_equal key_new_one, key_new_two
  end

  def test_we_get_offset_values
    offset_value = OffsetCalculator.new
    assert_equal "12233445", offset_value.generate_key_offsets(12345)
  end

  def test_we_get_the_correct_date
    date = OffsetCalculator.new
    assert_equal 140915, date.get_date
  end

  def test_rotate_date_works
    date = OffsetCalculator.new
    date.rotate_date
    assert_equal "7225", date.rotate_date
  end

end
