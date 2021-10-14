require_relative '../main'

describe Solver do
  it 'returns the correct factorial of a number with factorial method' do
    expect(Solver.new.factorial(5)).to eql 120
    expect(Solver.new.factorial(4)).to eql 24
    expect(Solver.new.factorial(1)).to eql 0
  end

  it 'raises an error if a negative number is passed to factorial' do
    expect { Solver.new.factorial(-24) }.to raise_error(ArgumentError, 'number must be 0 or positive')
  end

  it 'returns the words reversed' do
    expect(Solver.new.reverse_string('hello')).to eql 'olleh'
    expect(Solver.new.reverse_string('Richie')).to eql 'eihciR'
  end

  it 'raises an exception if it isn\'t a reversable' do
    expect do
      Solver.new.reverse_string({ a: 'b', c: 'd' })
    end.to raise_error(ArgumentError, 'the argument must be reversable')
    expect { Solver.new.reverse_string(1) }.to raise_error(ArgumentError, 'the argument must be reversable')
  end
end
