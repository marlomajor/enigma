#Key Generator
require 'pry'              # => true
class KeyGeneratorDecrypt

  attr_accessor :key  # => nil

  def initialize(key)
    @key = key         # => 12345
  end                  # => :initialize

  def print_key
    p key
  end            # => :print_key

end  # => :print_key

hello = KeyGeneratorDecrypt.new(12345)  # => #<KeyGeneratorDecrypt:0x007fa08494d690 @key=12345>
hello                                   # => #<KeyGeneratorDecrypt:0x007fa08494d690 @key=12345>
