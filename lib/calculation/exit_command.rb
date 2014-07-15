#Exits from the program
require_relative 'command'
class ExitCommand < Command
  def execute_operation
    Process.exit
  end

  def store

  end
end