require "pry"
class Ordered

	attr_accessor :things, :array
	attr_writer   :em2, :em1

	def initialize(things)
		@array  = []
		@things = things
		@ul1    = "<ol>"
		@ul2    = "</ol>"
    @li1    = "  <li>"
    @li2    = "</li>"
		@n      = "\n"
		@i      = ""
	end

	def input
	  things
	end

	def make_input_mod
		things = "#{input}#{@n}"
	end

	def split_it_up
		make_input_mod.split("1. ")
	end

	def do_it_right
		split_it_up.map do |find|
			if find.include?("\n")
				find.sub!("\n", "#{@li2}")
				find2 = find.split(" ")
				find2.unshift("#{@li1}")
				find = find2.join(" ")
			end
		end
	end

	def html_the_array
	  "#{@ul1}#{do_it_right.join("\n")}\n#{@ul2}"
	end

end
