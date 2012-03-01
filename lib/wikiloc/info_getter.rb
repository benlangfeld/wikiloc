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
      @data_type = @data_type.downcase

      case @data_type
      #when 'link'
      #  'http://en.wikipedia.org/wiki/' + @location
      when 'capital'
        xpath = "//*[.='Capital']"
      else
        return :invalid
      end

      find_data_in_table(xpath)

    end

    def find_data_in_table(xpath)
      page = @agent.get(page_url + @location)
      data = page.parser.xpath(xpath)[0].parent.parent.children[2].children[0].text
      if data[0..4].eql?("Motto")
        data = page.parser.xpath(xpath)[0].parent.parent.children[5].children[2].text
      elsif data[0..5].eql?("Anthem")
        data = page.parser.xpath(xpath)[0].parent.parent.children[4].children[2].text
      end
      data = cut_number_off(data)
      data
    end

    def cut_number_off(data)
      data.chop! while ('0'..'9').any? { |n| data.include? n }
      data
    end
  end
end
