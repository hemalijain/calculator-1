#Repeats last n number of commands
class RepeatCommand
  def initialize calculator,operations_history
    @calculator = calculator
  end
  def execute
    operations_history.retrieve()
  end
end