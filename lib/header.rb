require "pry"
class Header

	attr_accessor :input_header
	attr_writer   :end_header_1, :begining_header_1, :end_header_2, :begining_header_2
	attr_writer   :end_header_3, :begining_header_3, :end_header_4, :begining_header_4
	attr_writer   :end_header_5, :begining_header_5, :end_header_6, :begining_header_6

	def initialize(input_header)
		@input_header = input_header
		@begining_header_1 = "<h1>"
		@end_header_1      = "</h1>"
		@begining_header_2 = "<h2>"
		@end_header_2      = "</h2>"
		@begining_header_3 = "<h3>"
		@end_header_3      = "</h3>"
		@begining_header_4 = "<h4>"
		@end_header_4      = "</h4>"
		@begining_header_5 = "<h5>"
		@end_header_5      = "</h5>"
		@begining_header_6 = "<h6>"
		@end_header_6      = "</h6>"
	end

	def input
	  input_header
	end

	def split_it_up
	  input.split("\n")
	end

  def html_the_array
		split_it_up.map do |add_tags|
			if add_tags.include?("######")
				"#{@begining_header_6}#{split_it_up.join(" ")}#{@end_header_6}"
			elsif add_tags.include?("#####")
				"#{@begining_header_5}#{split_it_up.join(" ")}#{@end_header_5}"
			elsif add_tags.include?("####")
				"#{@begining_header_4}#{split_it_up.join(" ")}#{@end_header_4}"
			elsif add_tags.include?("###")
				"#{@begining_header_3}#{split_it_up.join(" ")}#{@end_header_3}"
			elsif add_tags.include?("##")
				"#{@begining_header_2}#{split_it_up.join(" ")}#{@end_header_2}"
			else
				"#{@begining_header_1}#{split_it_up.join(" ")}#{@end_header_1}"
			end
		end
  end

	def un_md_the_array
		html_the_array.map do |remove|
			remove.gsub("# ", "")
		end
	end

	def un_pound_the_array
		un_md_the_array.map do |remove|
			remove.gsub("#", "")
		end
	end
	
end
