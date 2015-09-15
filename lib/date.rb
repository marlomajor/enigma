class DateGenerator

  def initialize
  end

  def date_file(time)
    time_string = time.to_s
    final_string = ""
    final_string << time_string[8..9]
    final_string << time_string[5..6]
    final_string << time_string[2..3]
    final_string
  end

end

hello = DateGenerator.new
