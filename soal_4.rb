class Calculator
    def initialize(value)
        @value = value
    end
    
    def add(number)
        @value += number
    end
    
    def subtract(number)
        @value -= number
    end
    
    def multiply(number)
        @value *= number
    end

    def result
        @value
    end
end

calc = Calculator.new(7)
puts "add 3: #{calc.add(3)}"
puts "substract 2: #{calc.subtract(2)}"
puts "multiply 2: #{calc.multiply(2)}"
puts "result: #{calc.result}"