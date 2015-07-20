class Italics

	attr_accessor :things

	def initialize(things)
		@things = things
	end

	def input
		things
	end

	def italisize_the_string
		i = ""
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub("*", "<em>")
	    local_thing = local_thing.sub("*", "</em>")
		end
		input = local_thing
	end

end
