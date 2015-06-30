require_relative '../spec_helper'

module CollatzConjecture
  describe Solver do
    describe '#initialize' do
      it 'should accept initial and final values as positive integers' do
        expect(Solver.new(0, 2)).to_not be_nil
      end

      it 'should throw an ArgumentError if initial or final are negative' do
        expect {
          Solver.new(-2, 1)
        }.to raise_error(ArgumentError,
                         "initial (-2) value can't be negative")
        expect {
          Solver.new(2, -1)
        }.to raise_error(ArgumentError,
                         "final (-1) value can't be negative")
        expect {
          Solver.new(-2, -1)
        }.to raise_error(
                 ArgumentError,
                 "initial (-2) and final (-1) values can't be negative")
      end
    end
  end
end
