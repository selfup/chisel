class Paragraph

	attr_accessor :input_paragraph
	attr_writer   :p2, :p1

	def initialize(input_paragraph)
		@input_paragraph = input_paragraph
		@p1              = "<p>"
		@p2              = "</p>"
	end

	def input
	  input_paragraph
	end

	def split_it_up
	  input.split("\n")
	end

	def html_the_array
		"#{@p1}\n  #{split_it_up.join("\n  ")}\n#{@p2}"
	end

end
