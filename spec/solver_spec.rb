require_relative '../solver'
require 'rspec'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 for 0 or 1' do
      expect(Solver.new.factorial(0)).to eq(1)
      expect(Solver.new.factorial(1)).to eq(1)
    end

    it 'raises an error for negative numbers' do
      expect { subject.factorial(-1) }.to raise_error(ArgumentError)
    end

    it 'returns the correct factorial for positive numbers' do
      expect(subject.factorial(7)).to eq(5040)
    end
  end

  describe '#reverse' do
    it 'reverses a string' do
      expect(subject.reverse('hello')).to eq('olleh')
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' for multiples of 3" do
      expect(Solver.new.fizzbuzz(9)).to eq('fizz')
    end

    it "returns 'buzz' for multiples of 5" do
      expect(Solver.new.fizzbuzz(10)).to eq('buzz')
    end

    it "returns 'fizzbuzz' for multiples of 15" do
      expect(Solver.new.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns the input number for other numbers' do
      expect(Solver.new.fizzbuzz(20)).to eq('buzz')
    end
  end
end
