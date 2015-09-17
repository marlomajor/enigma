require_relative 'encrypt'
require 'pry'

class MessageEncrypter

  def initialize(encrypted_message)
    @encrypted_words = []
    @encrypted_message = encrypted_message
    @encrypt = Encrypt.new
  end

  def encrypt_char(letter, offset_value)
    @encrypted_words << @encrypt.get_index_and_add_letter(letter, offset_value)
  end


  def a_value
    @encrypt.get_a_val
  end

  def b_value
    @encrypt.get_b_val
  end
  #
  def c_value
    @encrypt.get_c_val
  end

  def d_value
    @encrypt.get_d_val
  end

  def encrypts
    word = @encrypted_message

    encrypted_words = []
    i = 0
    n = 0
    until word.length == n
      if i == 0
        encrypted_words << encrypt_char(word[n], a_value)
      elsif i == 1
        encrypted_words << encrypt_char(word[n], b_value)
      elsif i == 2
        encrypted_words << encrypt_char(word[n], c_value)
      elsif i == 3
        encrypted_words << encrypt_char(word[n], d_value)
      end
      i += 1
      n += 1
      i = 0 if i == 4
    end
    @encrypted_words.join
  end

end
