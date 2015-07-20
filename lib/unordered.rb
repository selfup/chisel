class Unordered

	attr_accessor :things

	def initialize(things)
		@things = things
	end

	def input
	  things
	end

	def make_input_mod
		things = "#{input}\n"
	end

	def split_it_up
		make_input_mod.split("* ")
	end

	def add_list_tags
		split_it_up.map do |find|
			if find.include?("\n")
				find.sub!("\n", "</li>")
				find2 = find.split(" ")
				find2.unshift("  <li>")
				find = find2.join(" ")
			end
		end
	end

	def html_the_array
	  "<ol>#{add_list_tags.join("\n")}\n</ol>"
	end

end
