require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require_relative '../lib/message_encrypter.rb'

class MessageEncrypterTest <Minitest::Test

  def test_it_exists
    assert MessageEncrypter
  end

  def test_encrypts_two_characters
    character = MessageEncrypter.new
    assert_equal 'kl', character.encrypts('hi', '3')
  end

  def test_encrypts_three_characters
    character = MessageEncrypter.new
    assert_equal 'x  ', character.encrypts('boo', '22')
  end

  def test_gets_offset_value_for_a
    character = MessageEncrypter.new
    assert_equal 19, character.a_value
  end

  def test_gets_encryption_levels
    character = MessageEncrypter.new
    assert_equal 't',    character.encrypt_char('a')
    assert_equal 'tz',   character.encrypt_char('aa')
    assert_equal 'tz ',  character.encrypt_char('aaa')
    assert_equal 'tz l', character.encrypt_char('aaaa')
    assert_equal 'tz lt', character.encrypt_char('aaaaa')
    assert_equal 'tz ltz l', character.encrypt_char('aaaaaaaa')
  end

end
