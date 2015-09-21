require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require_relative '../lib/message_encrypter.rb'

class MessageEncrypterTest <Minitest::Test

  def test_it_exists
    assert MessageEncrypter
  end


  def test_encrypts_two_characters
    character = MessageEncrypter.new("this is test")
    assert_equal 'kl', character.encrypts
  end

  def test_encrypts_three_characters
    character = MessageEncrypter.new('fireworks')
    assert_equal 'y7opcaov.', character.encrypts
  end

  def test_encrypts_two_characters
    character = MessageEncrypter.new('fireworks')
    assert_equal 'y7opcaov.', character.encrypts
  end

  def test_encrypts_three_characters
    character = MessageEncrypter.new('fireworks')
    assert_equal 'y7opcaov.', character.encrypts
  end


  def test_gets_offset_value_for_a
    character = MessageEncrypter.new('fireworks')
    assert_equal 19, character.a_value
  end

  def test_gets_encryption_levels
    
    character = MessageEncrypter.new('a')
    assert_equal 't',    character.encrypts
    character = MessageEncrypter.new('aa')
    assert_equal 'tz',   character.encrypts
    character = MessageEncrypter.new('aaa')
    assert_equal 'tz ',  character.encrypts
    character = MessageEncrypter.new('aaaa')
    assert_equal 'tz l', character.encrypts
    character = MessageEncrypter.new('aaaaa')
    assert_equal 'tz lt', character.encrypts
    character = MessageEncrypter.new('aaaaaaaa')
    assert_equal 'tz ltz l', character.encrypts
  end

end
