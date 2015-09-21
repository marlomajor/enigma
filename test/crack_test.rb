require_relative '../lib/decrypt.rb'
require_relative '../lib/key.rb'
require_relative '../lib/message_decrypter.rb'
require_relative '../lib/crack.rb'

class CrackTest < Minitest::Test

  def test_it_gets_index
    char = CrackEmily.new
    assert_equal 1, char.find_rotation_order('aaaaasaaaaaa')
  end

  def test_numbers_rotate
    char = CrackEmily.new
    assert_equal [9, 2, 3, 5], char.order_rotation_array([2, 3, 5, 9], 1)
  end

  def test_crack_runner
    char = CrackEmily.new
    assert_equal [29, 30, 25, 17], char.crack_runner('john1234567')
    assert_equal [17, 29, 30, 25], char.crack_runner('johns1234567')
    assert_equal [25, 17, 29, 30], char.crack_runner('jcohns1234567')
    assert_equal [30, 25, 17, 29], char.crack_runner('jcmohns1234567')
  end

  def test_it_decrypts
    char = CrackEmily.new
    assert_equal "gi0lywj220n", char.decrypt_loop('john1234567', [3, 6, 20, 2])
  end

  def test_it_decrypts_string
    char = CrackEmily.new
    assert_equal 'broncos are totally going to lose today..end..', char.cracks('udlyvapitdbi,aql4 vizafyzwqzq l3xwqzwzvjr3korx')

  end

end
