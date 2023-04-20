class Solver
  def factorial(num)
    if num.negative?
      "number can't be negative"
    else
      i = 1
      while num.positive?
        i *= num
        num -= 1
      end
      i
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && num % 5 != 0
      'fizz'
    elsif (num % 5).zero? && num % 3 != 0
      'buzz'
    elsif (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    else
      num.to_s
    end
  end
end
solve = Solver.new
puts solve.factorial(-2)
puts solve.factorial(5)
puts solve.reverse('Shakir')
puts solve.fizzbuzz(3)
puts solve.fizzbuzz(5)
puts solve.fizzbuzz(15)
puts solve.fizzbuzz(7)
