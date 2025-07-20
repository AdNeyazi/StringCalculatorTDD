require 'rails_helper'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(described_class.add("")).to eq(0)
    end

    it 'returns number for single input' do
      expect(described_class.add("5")).to eq(5)
    end
  end
end
