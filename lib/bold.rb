require "pry"
class Bold

	attr_accessor :things, :i
	attr_writer   :b2, :b1

	def initialize(things)
		@things = things
		@b1     = "<strong>"
		@b2     = "</strong>"
		@i      = ""
	end

	def input
		things
	end

	def bold_the_string
		i = @i
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub("**", "#{@b1}")
	    local_thing = local_thing.sub("**", "#{@b2}")
		end
		@i = i
		input = local_thing
	end
end
