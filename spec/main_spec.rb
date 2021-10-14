require_relative '../main'

describe Solver do
  it 'it returns the correct factorial of a number' do
    expect(Solver.new.factorial(5)).to eql 120
    expect(Solver.new.factorial(4)).to eql 24
    expect(Solver.new.factorial(1)).to eql 0
    expect { Solver.new.factorial(-24) }.to raise_error(ArgumentError, 'number must be 0 or positive')
  end
end
