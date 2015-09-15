#OffsetCalculator
require 'pry'
class OffsetCalculator

  def initialize
    get_key = KeyGenerator.new
    new_key = get_key
  end

  def generate_key_offsets(new_key)
    get_keys = ""
    key_work = new_key.to_s
    get_keys << key_work[0..1]
    get_keys << key_work[1..2]
    get_keys << key_work[2..3]
    get_keys << key_work[3..4]
    get_keys
  end

  def get_date
    time= Time.new
    time_string = time.to_s
    final_string = ""
    final_string << time_string[8..9]
    final_string << time_string[5..6]
    final_string << time_string[2..3]
    final_string.to_i
  end

  def rotate_date
    exponent = get_date ** 2
    date_array_build(exponent)
  end

  def date_array_build(exponent)
    rotate_numbers         = exponent.to_s
    rotate_date_numbers    = rotate_numbers[-4..-1]
  end
end
