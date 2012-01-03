module Wikiloc
  class Interactor
    def initialize(output)
      @output = output
    end
    
    def start
      @output.puts 'Welcome to Wikiloc!'
      @output.puts 'Enter location:'
      #location = gets.chomp
      #set_location(location)
    end
    
    def set_location(location)
      @location = location
    end
    
    def get_info(data_type)
      info_getter = InfoGetter.new(@location, data_type)
      @output.puts info_getter.get_info
    end
    
  end
end
