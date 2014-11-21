#Repeats last n number of commands
class RepeatCommand < Command
  def execute_operation
     operations_to_execute = @operations_history.retrieve(@operand)
     result = 0
     operations_to_execute.each do |operation|
      result =  operation.execute
     end
    result
  end
  def store

  end
end