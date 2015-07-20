require './lib/header.rb'
require './lib/paragraph.rb'
require './lib/bold.rb'
require './lib/italics'
require './lib/ampersand'
require './lib/ordered.rb'
require './lib/unordered.rb'
require './lib/output.rb'

class Chisel

  attr_accessor :file

  def initialize(file)
    @file = file
  end

  def input
    File.read(file)
  end

  def split_it_up
    input.split("\n\n")
  end

  def logic_the_things
    split_it_up.map do |find|
      if find.include?("#")
        Header.new(find).un_pound_the_array
      elsif find[0] == "*"
        Unordered.new(find).html_the_array
      elsif find[0] == "1"
        Ordered.new(find).html_the_array
      else
        Paragraph.new(find).html_the_array
      end
    end
  end

  def assemble
    logic_the_things.join("\n\n")
  end

  def stylize_bold
    Bold.new(assemble).bold_the_string
  end

  def stylize_italics
    Italics.new(stylize_bold).italisize_the_string
  end

  def stylize_amp
    Amp.new(stylize_italics).amp_the_string
  end

end

###########################
handle = Chisel.new(ARGV[0])
writer = File.open(ARGV[1], "w")
writer.write(handle.stylize_amp)
writer.close
puts Output.new.terminal_output
###############################
