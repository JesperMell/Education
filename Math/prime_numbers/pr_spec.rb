require 'rspec'
require_relative 'pr.rb'

RSpec.describe SieveOfEratosthenese do
  it 'should return correct prime numbers 1' do
    expect(SieveOfEratosthenese.call(10)).to eq [0,1,2,3,5,7]
  end
  it 'should return correct prime numbers 2' do
    expect(SieveOfEratosthenese.call(40)).to eq [0, 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
  end
end
