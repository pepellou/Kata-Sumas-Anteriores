class Fixnum

	def sums
		result = [ "#{self}+0" ]
		(1..self/2).each do |n|
			result.push "#{self - n}+#{n}"
		end
		result
	end

end
