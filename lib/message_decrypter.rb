require '/Users/marlomajor/code/enigma/lib/decrypt.rb'  # => true
require 'pry'                                           # => false

class MessageDecrypter

  def initialize
    @decrypt = Decrypt.new
  end

  def decrypt_char(word, offset_value)
    word = word.chars
    decrypted_words = []
    decrypted_words << @decrypt.get_index_and_add_letter(word, offset_value)
    decrypted_words.join
  end

  def a_value
    @decrypt.get_a_val
  end

  def b_value
    @decrypt.get_b_val
  end
  #
  def c_value
    @decrypt.get_c_val
  end

  def d_value
    @decrypt.get_d_val
  end

  def decrypts(word)
    word = word.chars
    decrypted_words = []
    i = 0
    n = 0
    until word.length == n
      if i == 0
        decrypted_words << decrypt_char(word[n], a_value)
      elsif i == 1
        decrypted_words << decrypt_char(word[n], b_value)
      elsif i == 2
        decrypted_words << decrypt_char(word[n], c_value)
      elsif i == 3
        decrypted_words << decrypt_char(word[n], d_value)
      end
      i += 1
      n += 1
      if i == 4
        i = 0
      end
    end
    decrypted_words.join
  end

end
