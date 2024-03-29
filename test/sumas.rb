# encoding: utf-8
require 'rspec'

require_relative '../sumas'

describe 'Fixnum' do

	describe 'sums' do

		@some_nums = [ 1, 2, 3, 4, 5, 15, 37 ]

		@some_nums.each do |n|

			it "computes trivial sum for number #{n}" do
				n.sums().should include("#{n}+0")
			end


			it "computes proper number of sums for number #{n}" do
				n.sums().length.should eql n/2+1
			end

			it "returns sums for number #{n}" do
				n.sums().each do |sum|
					sum.should include("+")
				end
			end

			it "returns ordered sums for number #{n}" do
				n.sums().each_with_index do |sum, i|
					num_to_sum = n - i
					sum.should include("#{num_to_sum}+")
				end
			end

			it "returns sums that sum n for n = #{n}" do
				n.sums().each do |sum|
					summands = sum.split("+").map { |elem| elem.to_i }
					totalSum = summands.inject { |sum, elem| sum + elem }
					totalSum.should eql n
				end
			end

		end

	end

end

describe 'Acceptance Test' => false do

	it 'gives us all natural sums resulting a number' do
		5.sums().should eql [ '5+0', '4+1', '3+2' ]
	end

end
