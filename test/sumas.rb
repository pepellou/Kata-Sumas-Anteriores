# encoding: utf-8
require 'rspec'

require_relative '../sumas'

describe 'Sumas' do

end

describe 'Acceptance Test' do

	it 'gives us all natural sums resulting a number' do
		5.sums().should eql [ '5+0', '4+1', '3+2' ]
	end

end
