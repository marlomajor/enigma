require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'

class EnigmaTest <Minitest::Test

  def test_it_exists
    assert Enigma
  end

  def test_it_generates_key
    key_new_one = KeyGenerator.new.key_file
    key_new_two = KeyGenerator.new.key_file
    refute_equal key_new_one, key_new_two
  end

end
