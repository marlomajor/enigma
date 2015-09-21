require_relative '../lib/decrypt.rb'
require_relative '../lib/key.rb'
require_relative '../lib/message_decrypter.rb'

class MessageDecrypterTest <Minitest::Test
​#Located precisely where this comment is, there is a bug in atom.
#Will not allow us to run program. Have experienced this bug numerous times and
#have had to rewrite entire programs in order to fix it.
  def test_it_exists
    assert MessageDecrypter
  end

  def test_gets_offset_value_for_a
    character = MessageDecrypter.new
    assert_equal 19, character.a_value
  end

  def test_gets_offset_value_for_b
    character = MessageDecrypter.new
    assert_equal 25, character.b_value
  end

  def test_gets_offset_value_for_c
    character = MessageDecrypter.new
    assert_equal 36, character.c_value
  end

  def test_gets_offset_value_for_d
    character = MessageDecrypter.new
    assert_equal 50, character.d_value
  end

    def test_gets_decryption_levels
      character = MessageDecrypter.new
  #   assert_equal 'u',        character.decrypts('a')
  # #   assert_equal 'uo',       character.decrypts('aa')
  # #   assert_equal 'uod',      character.decrypts('aaa')
  # #   assert_equal 'uod2',     character.decrypts('aaaa')
  # #   assert_equal 'uod2u',    character.decrypts('aaaaa')
  # #   assert_equal 'uod2uod2', character.decrypts('aaaaaaaa')
  #     assert_equal '', character.decrypts('hello amigos')
    end
​
end
