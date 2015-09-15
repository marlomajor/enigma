require_relative '../lib/encrypt.rb'
require_relative '../lib/key.rb'
require_relative '../lib/message_encrypter.rb'

class MessageEncrypterTest <Minitest::Test

  def test_it_exists
    assert MessageEncrypter
  end

end
