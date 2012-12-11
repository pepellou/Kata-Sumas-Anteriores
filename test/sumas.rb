# encoding: utf-8
require 'rspec'

require_relative '../sumas'

describe 'Fixnum' do

	describe 'sums' do

		@some_nums = [ 1, 2, 3, 4, 5, 15, 37 ]

		@some_nums.each do |n|

			it 'computes trivial sum' do
				n.sums().should include("#{n}+0")
			end

		end

	end

end

describe 'Acceptance Test', :if => false do

	it 'gives us all natural sums resulting a number' do
		5.sums().should eql [ '5+0', '4+1', '3+2' ]
	end

end
