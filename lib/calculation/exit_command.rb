#Exits from the program
require_relative 'command'
class ExitCommand < Command
  def execute
    Process.exit
  end
end