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
    end.to raise_error(ArgumentError, 'the argument must be a string')
    expect { Solver.new.reverse_string(1) }.to raise_error(ArgumentError, 'the argument must be a string')
    expect { Solver.new.reverse_string([1, 2]) }.to raise_error(ArgumentError, 'the argument must be a string')
  end

  it 'return a string fizzbuzz when n is divisible by 3 and 5 ' do
    expect(Solver.new.fizzbuzz(15)).to eql 'fizzbuzz'
  end

  it 'return fizz when is divisible by 3' do
    expect(Solver.new.fizzbuzz(9)).to eql 'fizz'
  end

  it 'return buzz when is divisible by 5' do
    expect(Solver.new.fizzbuzz(10)).to eql 'buzz'
  end

  it 'return the numbre converted to string whe is not divisible by 3 or 5' do
    expect(Solver.new.fizzbuzz(7)).to eql '7'
  end
end
