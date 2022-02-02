require 'rspec'
require_relative '../lib/cell'

RSpec.describe Cell do
  describe '#initialize' do
    it 'have the variable id incremented' do
      cell = Cell.new
      expect(cell.new_id).to eql(1)
    end

    it 'have the variable chosen equals false' do
      cell = Cell.new
      expect(cell.chosen).to be false
    end

    it 'have the variable sym equals to id' do
      cell = Cell.new
      expect(cell.sym).to eql(3.to_s)
    end
  end
end
