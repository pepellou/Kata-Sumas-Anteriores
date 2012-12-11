class Fixnum

	def sums
		result = []
		(0..self/2).each do |n|
			result.push "#{self - n}+#{n}"
		end
		result
	end

end
