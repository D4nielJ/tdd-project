require_relative '../main'

describe Solver do
  it 'it returns the correct factorial of a number' do
    expect(Solver.new.factorial(5)).to eql 120
    expect(Solver.new.factorial(4)).to eql 60
  end
end
