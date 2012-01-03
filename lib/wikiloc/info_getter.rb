module Wikiloc
  class InfoGetter
    def initialize(location, data_type)
      @location, @data_type = location, data_type
      @agent = Mechanize.new
      @agent.user_agent_alias = 'Mac Safari'
    end
    
    def page_url
      'http://en.wikipedia.org/wiki/'
    end
    
    def get_info
      page = @agent.get(page_url + @location)
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
