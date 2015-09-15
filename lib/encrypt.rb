require './lib/key.rb'
require 'offset_calculator'

#The Runner
class Enigma
attr_accessor :key_file, :date_file

  def initialize(encrypt)
    @encrypt = encrypt
  end

  def to_message
  end

  def date_file
    time= Time.new
    time_string = time.to_s
    final_string = ""
    final_string << time_string[8..9]
    final_string << time_string[5..6]
    final_string << time_string[2..3]
    final_string
  end

  def offset_calculator
  end

end
#
# new_enigma = Enigma.new("")
# new_enigma.date_file
#
#
# message_file = ARGV[0]
# encrypt_file = ARGV[1]
#
# #Read in the encrypted message
# encrypt = File.read(encrypt_file)
#
# #Convert encryption to message
# message = Enigma.new(encrypt).to_message
#
# #Write message to the output file
# File.write(message_file, message)
#
# #Print this summary
# puts "Created #{encrypt_file} with the key #{KeyGenerator.new.key_file} and date #{new_enigma.date_file}"
