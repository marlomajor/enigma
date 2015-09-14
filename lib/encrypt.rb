class Enigma
attr_accessor :key_file, :date_file  # => nil

  def initialize(encrypt)
    @encrypt = encrypt     # => ""
  end                      # => :initialize

  def to_message
  end             # => :to_message

  def key_file
    random_number = rand
    random_string = random_number.to_s
    random_string[2..6]
  end  # => :key_file

  def date_file
    time= Time.new                     # => 2015-09-14 17:30:49 -0600
    time_string = time.to_s            # => "2015-09-14 17:30:49 -0600"
    final_string = ""                  # => ""
    final_string << time_string[8..9]  # => "14"
    final_string << time_string[5..6]  # => "1409"
    final_string << time_string[2..3]  # => "140915"
    final_string                       # => "140915"
  end                                  # => :date_file

end  # => :date_file

new_enigma = Enigma.new("")  # => #<Enigma:0x007fcba38cdba8 @encrypt="">
new_enigma.date_file         # => "140915"

message_file = ARGV[0]  # => nil
encrypt_file = ARGV[1]  # => nil

#Read in the encrypted message
encrypt = File.read(encrypt_file)  # ~> NoMethodError: undefined method `txt' for nil:NilClass

#Convert encryption to message
message = Enigma.new(encrypt).to_message

#Write message to the output file
File.write(message_file, message)

#Print this summary
puts "Created #{encrypt_file} with the key #{new_enigma.key_file} and date #{new_enigma.date_file}"

# ~> NoMethodError
# ~> undefined method `txt' for nil:NilClass
# ~>
# ~> /Users/marlomajor/code/enigma/lib/encrypt.rb:34:in `<main>'
