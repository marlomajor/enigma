require_relative 'decrypt'
require_relative 'message_decrypter'

require 'pry'

if __FILE__ == $0
  input_file        = ARGV[0]
  output_file       = ARGV[1]
  date_file         = ARGV[3]
  input_key_file    = ARGV[2]

encrypted_message = File.read(input_file)

decrypted_message = MessageDecrypter.new.decrypts(encrypted_message)

File.write(output_file, decrypted_message)
puts "Created '#{output_file}' with the key #{input_key_file} and date #{date_file}"

end
