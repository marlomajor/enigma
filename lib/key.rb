#Key Generator
require 'pry'
class KeyGenerator

  def initialize
    @key_file = key_file
  end

  def key_file
    random_number = rand(100000)
  end

end

new_key = KeyGenerator.new()
