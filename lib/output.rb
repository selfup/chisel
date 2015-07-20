class Output

  def input_thing
    input_line_array = []
    File.foreach(ARGV[0]).map.with_index do |line, line_num|
       input_line_array << line_num
    end
    input_line_array
  end

  def out_put_thing
    output_line_array = []
    File.foreach(ARGV[1]).map.with_index do |line, line_num|
       output_line_array << line_num
    end
    output_line_array
  end

  def terminal_output
    "Converted #{ARGV[0]} (#{input_thing.last} lines) to #{ARGV[1]} (#{out_put_thing.last} lines)"
  end

end
