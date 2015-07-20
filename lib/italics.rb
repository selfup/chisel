class Italics

	attr_accessor :things, :i
	attr_writer   :em2, :em1

	def initialize(things)
		@things = things
		@em1    = "<em>"
		@em2    = "</em>"
		@i      = ""
	end

	def input
		things
	end

	def italisize_the_string
		i = @i
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub("*", "#{@em1}")
	    local_thing = local_thing.sub("*", "#{@em2}")
		end
		@i = i
		input = local_thing
	end

end
