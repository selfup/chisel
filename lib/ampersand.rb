class Amp

	attr_accessor :things

	def initialize(things)
		@things = things
	end

	def input
		things
	end

	def amp_the_string
		i = ""
		local_thing = input
		while i != local_thing
			i = local_thing
			local_thing = local_thing.sub(" & ", " $amp; ")
		end
		input = local_thing
	end

end
