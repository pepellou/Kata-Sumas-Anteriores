class Fixnum

	def sums
		(0..self/2).map { |n| "#{self - n}+#{n}" }
	end

end
