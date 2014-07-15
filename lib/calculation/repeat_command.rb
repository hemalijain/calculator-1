#Repeats last n number of commands
class RepeatCommand < Command
  def execute
     operations_to_execute = @operations_history.retrieve(@operand)
     result = 0
     operations_to_execute.each do |operation|
      result =  operation.execute
     end
    result
  end
end