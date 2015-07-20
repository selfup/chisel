class Amp

	attr_accessor :things, :i

	def initialize(things)
		@things = things
		@amp    = " &amp; "
		@i      = ""
	end

	def input
		things
	end

	def amp_the_string
		i = @i
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub(" & ", "#{@amp}")
		end
		@i = i
		input = local_thing
	end

end
