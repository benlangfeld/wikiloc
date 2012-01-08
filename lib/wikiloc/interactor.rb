module Wikiloc
  class Interactor
    def initialize(output)
      @output = output
      @location = "Israel"  #default location
      @data_type = "Capital"  #default data type
    end
    
    def set_location(location)
      @location = location
    end
    
    def set_data_type(data_type)
      @data_type = data_type
    end

    def get_location
      @location
    end
    
    def get_data_type
      @data_type
    end

    def start
      @output.puts 'Welcome to Wikiloc!'
      @output.puts 'Enter location:'
      location = gets.chomp
      set_location(location)
      @output.puts 'What do you want to know?'
      data_type = gets.chomp
      set_data_type(data_type)
      info = get_info
      @output.puts info
      @output.puts "the #{@data_type} of #{@location} is #{info}"
    end

    def get_info
      info_getter = InfoGetter.new(@location, @data_type)
      info_getter.get_info
    end
    
  end
end
