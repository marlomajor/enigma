class FileIO

  attr_reader :file, :output_file

  def initialize(input_file)
    @file = File.open(input_file).read.chomp.gsub("\n\n", " ").downcase
  end

  def package_output_file
    output_file = File.open("encrypted.txt", 'w')
    # output_file.write(encrypt_text)
    date = Date.today.strftime("%d%m%y")
    puts "Created '#{output_file}' with the key .... and date #{date}"
  end

end


# require_relative '../lib/encrypt.rb'  # => true
#
# class FileIO
#   def initialize(encrypt)
#     @encrypt = File.open(message_file).read  # ~> NameError: undefined local variable or method `message_file' for #<FileIO:0x007f8d499d9580>
#   end                                        # => :initialize
#
#   def encrypt
#     Encrypt.new(@encrypt)
#   end                      # => :encrypt
#
#   if __FILE__ == $0           # => true
#     message_file = ARGV[0]    # => nil
#     encrypted_file = ARGV[1]  # => nil
#     encrypt = Encrypt.new     # => #<Encrypt:0x007f8d499d9f08 @to_message=nil, @encrypt=nil, @key_file="56757", @offset_value=#<OffsetCalculator:0x007f8d499d9e40>>
#   end                         # => #<Encrypt:0x007f8d499d9f08 @to_message=nil, @encrypt=nil, @key_file="56757", @offset_value=#<OffsetCalculator:0x007f8d499d9e40>>
#
# end  # => #<Encrypt:0x007f8d499d9f08 @to_message=nil, @encrypt=nil, @key_file="56757", @offset_value=#<OffsetCalculator:0x007f8d499d9e40>>
#
# wow = FileIO.new(@encrypt)
#
# # ~> NameError
# # ~> undefined local variable or method `message_file' for #<FileIO:0x007f8d499d9580>
# # ~>
# # ~> /Users/marlomajor/code/enigma/lib/file_io.rb:5:in `initialize'
# # ~> /Users/marlomajor/code/enigma/lib/file_io.rb:20:in `new'
# # ~> /Users/marlomajor/code/enigma/lib/file_io.rb:20:in `<main>'
