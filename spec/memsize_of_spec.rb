require 'spec_helper'
require 'objspace'

describe ObjectSpace do
  describe '#memsize_of' do
    it 'should be 8 time size of array' do
      expect(ObjectSpace.memsize_of([1,2,3,4,5,6,7])).to eql 56
    end
  end
end
