require_relative '../lib/Decrypt.rb'
require_relative '../lib/key.rb'
require 'pry'

class DecryptTest <Minitest::Test

  def test_it_exists
    assert Decrypt
  end

  def test_get_date
    date = Decrypt.new
    assert_equal '170915', date.date_file
    assert_equal '160915', date.date_file("2015-09-16 15:13:02 -0630")
    assert_equal '101010', date.date_file("2010-10-10 15:13:02 -0630")
  end

  # def test_rotate_date
  #   date = Decrypt.new
  #   assert_equal '7225', date.date_file
  # end

  # def test_it_generates_key
  #   key_new_one = KeyGenerator.new.key
  #   key_new_two = KeyGenerator.new.key
  #   refute_equal key_new_one, key_new_two
  # end
  #
  #
  # def test_we_get_the_correct_date
  #   date = OffsetCalculator.new
  #   assert_equal 160915, date.get_date
  # end
  #
  # def test_rotate_date_works
  #   date = Decrypt.new
  #   assert_equal "7225", date.get_rotated_date
  # end
  #
  # def test_we_get_offset_values
  #   offset_value = Decrypt.new
  #   assert_equal "12233445", offset_value.get_rotated_key(12345)
  # end
  #
  # def test_get_a_value
  #   a_val = Decrypt.new
  #   assert_equal 19, a_val.get_a_val
  # end
  #
  # def test_get_b_value
  #   b_val = Decrypt.new
  #   assert_equal 25, b_val.get_b_val
  # end
  #
  # def test_get_c_value
  #   c_val = Decrypt.new
  #   assert_equal 36, c_val.get_c_val
  # end
  #
  # def test_get_d_value
  #   d_val = Decrypt.new
  #   assert_equal 50, d_val.get_d_val
  # end
  #
  # def test_get_array
  #   array = Decrypt.new
  #   assert_equal ['a', 'b', 'c', 'd', 'e', 'f', 'g',
  #     'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
  #     'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
  #     'z', '0', '1', '2', '3', '4', '5', '6',
  #     '7', '8', '9', ' ', '.', ','], array.get_array
  # end
  #
  # def test_index_one_works_as_expected
  #   letter = Decrypt.new
  #   assert_equal '0',  letter.get_index('a')
  #   assert_equal '4',  letter.get_index('e')
  #   assert_equal '38', letter.get_index(',')
  # end
  #
  #
  # def test_Decrypts_single_letter_correctly
  #   letter = Decrypt.new
  #   assert_equal 't',  letter.Decrypts_letter(0, 19)
  #   assert_equal '8',  letter.Decrypts_letter(15, 19)
  #   assert_equal ' ',  letter.Decrypts_letter(0, 36)
  #   assert_equal 'i',  letter.Decrypts_letter(3, 5)
  #   assert_equal 'c',  letter.Decrypts_letter(38, 3)
  # end

end
