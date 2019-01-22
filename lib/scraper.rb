require 'nokogiri'
require 'open-uri'

def scrape_etsy(keyword)
  html_content = open("https://www.etsy.com/search?q=#{keyword}").read
  doc = Nokogiri::HTML(html_content)

  etsy_items = {}
  doc.search('.v2-listing-card .v2-listing-card__info .text-body').first(5).each do |element|
    etsy_items[element.text.strip[0..30]] = false
  end
  return etsy_items
end
