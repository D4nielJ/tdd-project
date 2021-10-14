class Solver
  def factorial(num)
    return 0 if num == 1
    raise ArgumentError, 'number must be 0 or positive' if num.negative?

    res = 1
    until num < 1
      res *= num
      num -= 1
    end
    res
  end

  def reverse_string(string)
    raise ArgumentError, 'the argument must be a string' unless string.is_a?(String)

    string.reverse
  end

  def fizzbuzz(num)
    'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
  end
end
