require_relative 'encrypt'
require 'pry'

class MessageEncrypter

  def initialize
    @encrypt = Encrypt.new
  end

  def encrypts(word, offset_value)
    word = word.chars
    encrypted_words = []
    i = 0
    until word.length == i
      encrypted_words << @encrypt.get_index_and_add_letter(word[i], offset_value)
      i += 1
    end
    encrypted_words.join
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

  def encrypt_char(word)
    word = word.chars
    encrypted_words = []
    i = 0
    n = 0
    until word.length == n
      if i == 0
        encrypted_words << encrypts(word[i], a_value)
      elsif i == 1
        encrypted_words << encrypts(word[i], b_value)
      elsif i == 2
        encrypted_words << encrypts(word[i], c_value)
      elsif i == 3
        encrypted_words << encrypts(word[i], d_value)
      end
      i += 1
      n += 1
      if i == 4
        i = 0
      end

    end
    encrypted_words.join
  end






end
