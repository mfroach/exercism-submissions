#stolen from kniknoo because its really good and my code sucked
class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if first_operand.class != Integer || second_operand.class != Integer
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    begin
    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue ZeroDivisionError => e
      "Division by zero is not allowed."
    end
  end
end