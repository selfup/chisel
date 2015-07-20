class Paragraph

	attr_accessor :input_paragraph

	def initialize(input_paragraph)
		@input_paragraph = input_paragraph
	end

	def input
	  input_paragraph
	end

	def split_it_up
	  input.split("\n")
	end

	def html_the_array
		"<p>\n  #{split_it_up.join("\n  ")}\n</p>"
	end

end
