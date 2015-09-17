require_relative 'encrypt'
require_relative 'message_encrypter'
require 'pry'

if __FILE__ == $0
  encrypted_file = ARGV[0]
  decrypted_file = ARGV[1]
  encrypted_message = File.read(encrypted_file)
  decrypted_message = MessageEncrypter.new(encrypted_message).encrypts
  File.write(decrypted_file, decrypted_message)
  puts "Created #{encrypted_file} with the key#{KeyGenerator.new.key} and date #{Encrypt.new.date_file}"
end
