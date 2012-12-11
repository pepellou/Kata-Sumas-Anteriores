# encoding: utf-8
require 'rspec'

require_relative '../sumas'

describe 'Fixnum' do

	describe 'sums' do

		it 'computes trivial sum' do
			1.sums().should eql ['1+0']
		end

	end

end

describe 'Acceptance Test', :if => false do

	it 'gives us all natural sums resulting a number' do
		5.sums().should eql [ '5+0', '4+1', '3+2' ]
	end

end
