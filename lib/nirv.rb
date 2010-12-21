# The Command Line tool for NirvanaHQ
require "rubygems"
require "simpleconsole"
require "uuid"

# @q how to deal with problems - ie: missing params? tried raise but having an issues
#   - the raise keeps bubbling up so need to play with those more to see what i'm doing wrong
# @todo How do you test a simpleconsole program? Ay advice would be appreciated tbd

class Controller < SimpleConsole::Controller

  def initialize
    super
    @my_app_name = File.basename(__FILE__)
    # @version = '0.1'
    # @nirvana = Nirvanahq.new $config    
  end
  
  def method_missing name = "method_missing"
    puts "Method #{name} does not exist. Try '#{@my_app_name} help'."
  end
  
end

class View < SimpleConsole::View
  
end

