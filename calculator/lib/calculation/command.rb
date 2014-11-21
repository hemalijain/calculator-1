#abstract command class
class Command
  attr_reader :operand
  def initialize calculator,operations_history,operand = nil
    @calculator = calculator
    @operand = operand
    @operations_history = operations_history
  end
  def execute
    store
    execute_operation
  end

  def execute_operation

  end

  def store
      @operations_history.store self
  end
  def ==(other)
      return true if self.equal?(other)
      return false if other.nil?
      return false if other.class != self.class
      @operand== other.operand
  end

  def hash
      37*(@operand.hash)
  end

  def eql? other
    self == other
  end
end
