require_relative 'key'
require_relative 'offset_calculator'
require_relative 'date'

class Encrypt
  attr_accessor :key_file, :text

  def initialize
    @key_file            = KeyGenerator.new.key
    @offset_value        = OffsetCalculator.new
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

  def get_rotated_date
    @offset_value.rotate_date
  end

  def get_rotated_key(new_key)
    @offset_value.generate_key_offsets(new_key)
  end

  def get_a_val
    a_value_one = get_rotated_date[0]
    a_value_two = get_rotated_key(12345)[0..1]
    a_value = a_value_one.to_i + a_value_two.to_i
  end

  def get_b_val
    b_value_one = get_rotated_date[1]
    b_value_two = get_rotated_key(12345)[2..3]
    b_value = b_value_one.to_i + b_value_two.to_i
  end

  def get_c_val
    c_value_one = get_rotated_date[2]
    c_value_two = get_rotated_key(12345)[4..5]
    c_value = c_value_one.to_i + c_value_two.to_i
  end

  def get_d_val
    d_value_one = get_rotated_date[3]
    d_value_two = get_rotated_key(12345)[6..7]
    d_value = d_value_one.to_i + d_value_two.to_i
  end

  def get_array
     ['a', 'b', 'c', 'd', 'e', 'f',
      'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
      'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
      'y', 'z', '0', '1', '2', '3', '4', '5', '6',
      '7', '8', '9', ' ', '.', ',']
  end

  def get_index_and_add_letter(letter, offset_value)
    index = get_index(letter)
    encrypts_letter(index, offset_value)
  end

  def encrypts_letter(index, offset_value)
    i = index.to_i
    n = 0
    until n == offset_value.to_i
      i += 1
      n += 1
      i = 0 if i > 38
    end
    get_array[i]
  end

  def get_index(letter)
    array = get_array
    i = 0
    until i > 39 || array[i] == letter
      i += 1
    end
    i.to_s
  end

end
