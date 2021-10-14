class Solver
  def factorial(num)
    res = 1
    until num < 1
      res *= num
      num -= 1
    end
    p res
  end
end
