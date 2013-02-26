require "rubygems"
require "nokogiri"
require 'open-uri'
urls = ['http://100.100.100.8/SSI/supply_status.htm','http://100.100.100.10/SSI/supply_status.htm','http://100.100.100.11/SSI/supply_status.htm']

for url in urls
  doc = Nokogiri::HTML(open(url))
  doc.encoding = 'utf-8'

  doc.xpath("//table//td[@class='supplyName width10']").each do |t|
    puts url + t
  end
end
