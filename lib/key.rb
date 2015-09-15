#Key Generator
require 'pry'
class KeyGenerator

  attr_accessor :key

  def initialize
   @key = random_number = rand(100000)
  end

  # def key_file
  #
  #   random_number = rand(100000)
  # end

end

new_key = KeyGenerator.new()
