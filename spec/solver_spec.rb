require 'rspec'
require './solver'

describe Solver do
  describe '#new' do
    it 'Creates an instance of Solver' do
      solver = Solver.new
      expect(solver).to be_instance_of Solver
    end
  end

  # testing for factorial method
  describe '#factorial' do
    it 'Return the factorial  of the number' do
      solver = Solver.new

      # Negative number
      negative_number = solver.factorial(-4)
      expect(negative_number).to eq("number can't be negative")

      # Number = 0
      zero_number = solver.factorial(0)
      expect(zero_number).to eq(1)

      # Positive number
      positive_number = solver.factorial(3)
      expect(positive_number).to eq(6)
    end
  end

  # Testing for reverse method

  describe '#reverse' do
    it 'Return the reverse of the word' do
      # arrange
      solver = Solver.new
      # asset
      word = solver.reverse('hello')
      # act
      expect(word).to eq('olleh')
    end
  end

  # Testing for fizzbuzz method

  describe '#fizzbuzz' do
    it 'Return the "fizz" when N divisible by 3' do
      solver = Solver.new
      number = solver.fizzbuzz(3)
      fizzbuzz_number = 'fizz'
      expect(number).to eq(fizzbuzz_number)
    end

    it 'Return the "buzz" when N divisible by 5' do
      solver = Solver.new
      number = solver.fizzbuzz(5)
      fizzbuzz_number = 'buzz'
      expect(number).to eq(fizzbuzz_number)
    end

    it 'Return the "fizzbuzz" when N divisible by 3 and 5' do
      solver = Solver.new
      number = solver.fizzbuzz(15)
      fizzbuzz_number = 'fizzbuzz'
      expect(number).to eq(fizzbuzz_number)
    end

    it 'Return the string "N" as string an any other case' do
      solver = Solver.new
      number = solver.fizzbuzz(7)
      fizzbuzz_number = '7'
      expect(number).to eq(fizzbuzz_number)
    end
  end
end
