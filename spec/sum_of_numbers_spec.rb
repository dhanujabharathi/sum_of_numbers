require 'spec_helper'

RSpec.describe SumOfNumbers do
  subject { SumOfNumbers.new }
  it "has a version number" do
    expect(SumOfNumbers::VERSION).not_to be nil
  end

  describe '#total_num' do
    it "raises error for negative numbers" do
      expect{SumOfNumbers.total_num('-123')}.to raise_error(RuntimeError, 'Negative numbers are not allowed')
    end
    it "does total all numbers excluding comma" do
      expect(SumOfNumbers.total_num('2,4,6')).to eq(12.0)
    end
    it "does total all numbers excluding stars" do
      expect(SumOfNumbers.total_num('2***15')).to eq(17.0)
    end
    it "does return zero for empty string" do
      expect(SumOfNumbers.total_num("")).to eq(0)
    end
  end
end