require_relative '../lib/first_tdd.rb'
require 'rspec'

# Remove dups
# Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

# [1, 2, 1, 3, 3].uniq # => [1, 2, 3]
# Write your own version of this method called my_uniq; it should take in an Array and return a new array.


describe '#my_uniq' do
    it 'should take an array' do
        expect{[1, 2, 1, 3, 3].my_uniq}.to_not raise_error
    end
    it 'should return an array' do
        expect([1, 2, 1, 3, 3].my_uniq.is_a?(Array))
    end
    it 'should return only 1 of each value from original array' do
        expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
    end
end

describe '#two_sum' do 
    subject(:summer) { [-1, 0, 2, -2, 1, 1].two_sum }
    it 'should take an array' do 
        expect{summer}.to_not raise_error
    end 
    it 'should return pairs of indices whose elements sum to zero' do
       expect(summer).to eq([[0, 4], [0, 5], [2, 3]])
    end 
    it 'should have each of the pairs sorted smaller first index before bigger index' do
        expect(summer.index([0,4])).to be <(summer.index([2,3]))
    end
    it 'should have each of the pairs sorted smaller second index before bigger index if bigger indices are same' do
        expect(summer.index([0,4])).to be <(summer.index([0,5]))
    end

end 

describe '#my_transpose' do
    subject(:matrix) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ] }
    it 'should take 2D array' do 
        expect{matrix.my_transpose}.to_not raise_error
    end 
    it 'should convert between the row-oriented and column-oriented representations' do
        expect(matrix.my_transpose).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ])
    end
end 

describe '#stock_picker' do
    subject(:stocks) {[3,2,4,6,1,4].stock_picker}
    it 'should take an array' do 
        expect{stocks}.to_not raise_error
    end

    it 'should choose the indices representing the most profitable investment' do
        expect(stocks).to eq([1,3])
    end
end