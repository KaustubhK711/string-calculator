require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    let(:calculator) { described_class.new }

    it 'returns 0 for empty string' do
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for single number' do
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns sum for two comma-separated numbers' do
      expect(calculator.add("1,5")).to eq(6)
    end
  end
end

