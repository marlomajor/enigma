#Key Generator
require 'pry'       # => true
class KeyGenerator

  attr_accessor :key  # => nil

  def initialize
   @key = rand(100000).to_s.rjust(5, "0")  # => "40841"
  end                                      # => :initialize

end  # => :initialize

new_key = KeyGenerator.new()  # => #<KeyGenerator:0x007fad3a895578 @key="40841">
new_key.key                   # => "40841"
