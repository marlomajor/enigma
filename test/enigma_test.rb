require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require 'pry'

class EnigmaTest <Minitest::Test

  def test_it_exists
    # skip
    assert Enigma
  end

  def test_it_generates_key
    # skip
    key_new_one = KeyGenerator.new.key_file
    key_new_two = KeyGenerator.new.key_file
    refute_equal key_new_one, key_new_two
  end

  def test_we_get_offset_values
    # skip
    offset_value = OffsetCalculator.new
    date_value   =
    offset_value.generate_key_offsets(12345)
  end

  def test_we_get_the_correct_date
    # skip
    date = OffsetCalculator.new
    assert_equal "140915", date.get_date
  end

  

end
