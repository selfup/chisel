class Header

	attr_accessor :input_header

	def initialize(input_header)
		@input_header = input_header
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
				"<h6>#{split_it_up.join(" ")}</h6>"
			elsif add_tags.include?("#####")
				"<h5>#{split_it_up.join(" ")}</h5>"
			elsif add_tags.include?("####")
				"<h4>#{split_it_up.join(" ")}</h4>"
			elsif add_tags.include?("###")
				"<h3>#{split_it_up.join(" ")}</h3>"
			elsif add_tags.include?("##")
				"<h2>#{split_it_up.join(" ")}</h2>"
			else
				"<h1>#{split_it_up.join(" ")}</h1>"
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
