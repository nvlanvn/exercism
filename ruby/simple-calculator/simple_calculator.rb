class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError

  end

  def self.calculate(first_operand, second_operand, operation)
     raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
     raise ArgumentError unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
     return "Division by zero is not allowed." if (second_operand == 0 and operation == "/")
     result = eval("#{first_operand} #{operation} #{second_operand}")
     "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
