class Fixnum

	def sums
		result = [ "#{self}+0" ]
		(self/2).times do
			result.push '+'
		end
		result
	end

end
