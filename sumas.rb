class Fixnum

	def sums
		result = [ "#{self}+0" ]
		(1..(self/2)).each do |i|
			n = self-i
			result.push "#{n}+"
		end
		result
	end

end
