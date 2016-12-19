class Parser
  attr_accessor :parse_page
  attr_accessor :html

  def initialize(url)
    @html = HTTParty.get(url).body
  end

  def parse_page
    @parse_page ||= Nokogiri::HTML(html)
  end

  def call
    hash = {}
    %w(a h1 h2 h3).each do |elem|
      hash[elem] = []
      parse_page.css(elem).each do |item|
        elem == 'a' ? hash[elem].push(item[:href]) : hash[elem].push(item.text)
      end
    end
    hash
  end
end
