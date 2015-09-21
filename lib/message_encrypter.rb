require_relative 'encrypt'  # => true
require 'pry'               # => false

class MessageEncrypter

  def initialize(encrypted_message)
    @encrypted_words = []
    @encrypted_message = encrypted_message
    @encrypt = Encrypt.new
  end                                       # => :initialize

  def encrypt_char(letter, offset_value)
    @encrypted_words << @encrypt.get_index_and_add_letter(letter, offset_value)
  end                                                                            # => :encrypt_char


  def a_value
    @encrypt.get_a_val
  end                   # => :a_value

  def b_value
    @encrypt.get_b_val
  end                   # => :b_value
  #
  def c_value
    @encrypt.get_c_val
  end                   # => :c_value

  def d_value
    @encrypt.get_d_val
  end                   # => :d_value

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
    @encrypted_words.join.chop

  end  # => :encrypts

end  # => :encrypts
