#OffsetCalculator
require 'pry'           # => true
class OffsetCalculator

  def initialize
    get_key               = KeyGenerator.new  # ~> NameError: uninitialized constant OffsetCalculator::KeyGenerator
    new_key               = get_key
  end                           # => :initialize

  def generate_key_offsets(new_key)
    
  end                                # => :generate_key_offsets

  def get_date
    time= Time.new
    time_string = time.to_s
    final_string = ""
    final_string << time_string[8..9]
    final_string << time_string[5..6]
    final_string << time_string[2..3]
    final_string
  end           # => :get_date

end  # => :get_date



# ~> NameError
# ~> uninitialized constant OffsetCalculator::KeyGenerator
# ~>
# ~> /Users/marlomajor/code/enigma/lib/offset_calculator.rb:6:in `initialize'
# ~> /Users/marlomajor/code/enigma/lib/offset_calculator.rb:21:in `new'
# ~> /Users/marlomajor/code/enigma/lib/offset_calculator.rb:21:in `<main>'
