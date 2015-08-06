require 'test_helper'

describe Xmlsplice do

  describe 'simple housekeeping' do
    it 'must have a version number' do
      ::Xmlsplice::VERSION.wont_equal nil
    end
  end

  describe 'some simple scenarios' do
    it 'must return original given an empty selection' do
      Xmlsplice::Converter.new.parentise('foo', 0, 0).must_equal 'foo'
    end
  end
end
