require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class EncryptTest <Minitest::Test

  def test_it_exists
    assert Encrypt
  end

  def test_it_generates_key
    key_new_one = KeyGenerator.new.key
    key_new_two = KeyGenerator.new.key
    refute key_new_one == key_new_two
  end


  def test_we_get_the_correct_date
    date = OffsetCalculator.new
    assert_equal 210915, date.get_date
  end

  def test_rotate_date_works
    date = Encrypt.new
    assert_equal "7225", date.get_rotated_date
  end

  def test_we_get_offset_values
    offset_value = Encrypt.new
    assert_equal "12233445", offset_value.get_rotated_key(12345)
  end

  def test_get_a_value
    a_val = Encrypt.new
    assert_equal 19, a_val.get_a_val
  end

  def test_get_b_value
    b_val = Encrypt.new
    assert_equal 25, b_val.get_b_val
  end

  def test_get_c_value
    c_val = Encrypt.new
    assert_equal 36, c_val.get_c_val
  end

  def test_get_d_value
    d_val = Encrypt.new
    assert_equal 50, d_val.get_d_val
  end

  def test_get_array
    array = Encrypt.new
    assert_equal ['a', 'b', 'c', 'd', 'e', 'f', 'g',
      'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
      'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
      'z', '0', '1', '2', '3', '4', '5', '6',
      '7', '8', '9', ' ', '.', ','], array.get_array
  end

  def test_index_one_works_as_expected
    letter = Encrypt.new
    assert_equal '0',  letter.get_index('a')
    assert_equal '4',  letter.get_index('e')
    assert_equal '38', letter.get_index(',')
  end


  def test_encrypts_single_letter_correctly
    letter = Encrypt.new
    assert_equal 't',  letter.encrypts_letter(0, 19)
    assert_equal '8',  letter.encrypts_letter(15, 19)
    assert_equal ' ',  letter.encrypts_letter(0, 36)
    assert_equal 'i',  letter.encrypts_letter(3, 5)
    assert_equal 'c',  letter.encrypts_letter(38, 3)
    assert_equal 'a',   letter.encrypts_letter(38, 79)
  end

end
