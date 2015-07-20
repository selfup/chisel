class Bold

	attr_accessor :things

	DOUBLESTAR = "**"

	def initialize(things)
		@things = things
	end

	def input
		things
	end

	def bold_the_string
		i = ""
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub(DOUBLESTAR, "<strong>")
	    local_thing = local_thing.sub(DOUBLESTAR, "</strong>")
		end
		input = local_thing
	end

end
