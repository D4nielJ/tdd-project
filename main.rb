class Solver
  def factorial(num)
    return 0 if num == 1

    raise ArgumentError, 'number must be 0 or positive' if num.negative?

    res = 1
    until num < 1
      res *= num
      num -= 1
    end
    p res
  end
end
