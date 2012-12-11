class Fixnum

	def sums
		result = [ "#{self}+0" ]
		(1..(self/2)).each do |i|
			result.push "#{self - i}+#{i}"
		end
		result
	end

end
