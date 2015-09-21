require_relative 'crack'
require_relative 'message_decrypter'

require 'pry'

if __FILE__ == $0
  input_file        = ARGV[0]
  output_file       = ARGV[1]
  date_file         = ARGV[2]

encrypted_message = File.read(input_file).chomp
new_file = CrackEmily.new
cracked_message = new_file.cracks(encrypted_message)
File.write(output_file, cracked_message)

puts "Created '#{output_file}' with the key #{KeyGenerator.new.key} and date #{date_file}"
end
