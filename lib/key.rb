#Key Generator
require 'pry'       # => true
class KeyGenerator

  attr_accessor :key  # => nil

  def initialize
   @key = rand(100000).to_s.rjust(5, "0")  # => "39700"
  end                                      # => :initialize

  # def key_file
  #
  #   random_number = rand(100000)
  # end

end  # => :initialize

new_key = KeyGenerator.new()  # => #<KeyGenerator:0x007fc27182c270 @key="39700">
