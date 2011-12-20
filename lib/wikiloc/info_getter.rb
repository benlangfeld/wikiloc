module Wikiloc
  class InfoGetter
    require 'rubygems'
    require 'mechanize'

    def initialize(location, data_type)
      @location, @data_type = location, data_type
    end
    
    def get_info
      agent = Mechanize.new
      agent.user_agent_alias = 'Mac Safari'
      page = agent.get('http://en.wikipedia.org/wiki/' + @location)
      case @data_type
        when 'link'
          'http://en.wikipedia.org/wiki/' + @location
        when 'capital'
          xpath = "//*[.='Capital']"
          page.parser.xpath(xpath)[0].parent.parent.children[2].children[0].text
        else
          puts "invalid query"
      end
    end
    
  end
end