require "../lib/encrypt_file"

class Enigma
  def initialize(encrypt)
    @encrypt = encrypt
  end

end

encrypted = ARGV[0]
message   = ARGV[1]

#Read in the encrypted message
encrypt = File.read(encrypt_file)

#Convert encryption to message
message = Enigma.new(encrypt).to_message

#Write message to the output file
File.write(message_file, message)

#Print this summary
puts "Created #{encrypted.txt} with the key #{key_file} and date #{date_file}"
