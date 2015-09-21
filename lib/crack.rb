require_relative 'message_decrypter'
require 'pry'

class CrackEmily
  attr_accessor :crack

  def initialize
    @message_decrypter = MessageDecrypter.new
  end

  def cracks(string)
    command_array = crack_runner(string)
    decrypt_loop(string, command_array)
  end

  def decrypt_loop(string, command_array)
    i = 0
    decrypt_string = ''
    string.each_char do |char|
      decrypt_string << @message_decrypter.decrypt_char(char, command_array[i])
      i += 1
      if i > 3
        i = 0
      end
    end
    decrypt_string
  end

  def crack_runner(string)
    rotations = rotation(string)
    num = find_rotation_order(string)
    order_rotation_array(rotations, num)
  end

  def get_map
    map = ['a', 'b', 'c', 'd', 'e', 'f',
    'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
    'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
    'y', 'z', '0', '1', '2', '3', '4', '5', '6',
    '7', '8', '9', ' ', '.', ',']
   end

  def rotation(string)
    map = get_map
    array = string.chars
    last_digits = array[-7..-4]
    expected_last = [".", ".", "e", "n"]
    counter = 0
    rotations = []
    last_digits.each do |num|
      location = map.index(last_digits[counter])
      origin = map.index(expected_last[counter])
      rotations << (location - origin) % map.length
      counter += 1
    end
    rotations
  end

  def find_rotation_order(string)
    (string.length - 7) % 4
  end

  def order_rotation_array(rotations, num)
    rotations.rotate(-num)
  end

end

# if __FILE__ == $0
#   input_file        = ARGV[0]
#   output_file       = ARGV[1]
#   date_file         = ARGV[2]
#
# encrypted_message = File.read(input_file)
# cracked_message = MessageDecrypter.new(encrypted_message).decrypt(encrypted_message)
# # cracked_message = cracked_message.crack_runner(encrypted_message)
#
# File.write(output_file, cracked_message)
# binding.pry
# puts "Created '#{output_file}' with the key #{CrackEmily.new.crack_runner(encrypted_message)} and date #{date_file}"
# end
